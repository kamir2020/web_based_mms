<?php
session_start();
require_once 'secure.php';  // encrypt()/decrypt()

/* ===== PDO Connection ===== */
$host = 'localhost';
$dbname = 'db_mms';
$dbuser = 'root';
$dbpass = 'PStw_mysql_root';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $dbuser, $dbpass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Minimal leak; don't expose full stack
    http_response_code(500);
    die("❌ DB connection failed.");
}

/* ===== CSRF ===== */
if (empty($_SESSION['csrf'])) {
    $_SESSION['csrf'] = bin2hex(random_bytes(32));
}

$error = '';

/* ===== Handle Login ===== */
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $csrf     = $_POST['csrf']     ?? '';
    $username = trim($_POST['username'] ?? '');
    $pwd      = $_POST['pwd']      ?? '';

    if (!hash_equals($_SESSION['csrf'], $csrf)) {
        $error = 'Invalid session. Please refresh and try again.';
    } elseif ($username === '' || $pwd === '') {
        $error = 'Please enter both username and password.';
    } else {
        $stmt = $pdo->prepare("SELECT userID, username, pwd, levelID FROM tbl_user WHERE username = ? LIMIT 1");
        $stmt->execute([$username]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            // Decrypt stored password (NEVER echo this)
            $storedPlain = decrypt($row['pwd']);   // plaintext or null

            // timing-safe check
            if ($storedPlain !== null && hash_equals($storedPlain, $pwd)) {
                $_SESSION['userID']  = $row['userID'];
                $_SESSION['levelID'] = $row['levelID'];

                if ($row['levelID'] === 'SA') {
                    header('Location: admin/index.php'); exit;
                } else {
                    header('Location: user/index.php'); exit;
                }
            }
        }
        $error = 'Invalid username or password.';
    }
}
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Integrated Environmental Solution — Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
    :root{
      --bg1:#0b1020; --bg2:#101b3d; --card:rgba(18,25,51,.6);
      --border:rgba(159,197,255,.18); --text:#eef2ff; --muted:#a9b2d6;
      --accent:#49a3ff; --accent-2:#86e3ff; --danger:#ff6b6b; --ok:#3ddc97;
      --shadow:0 20px 80px rgba(0,0,0,.45);
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0; font-family:Inter,system-ui,Segoe UI,Roboto,Arial,sans-serif;
      color:var(--text); background:radial-gradient(1200px 800px at 20% 10%, #142046, #0b1020);
      overflow:hidden;
    }

    /* Animated blobs background */
    .blob{
      position:absolute; border-radius:50%; filter:blur(60px); opacity:.35; mix-blend-mode:screen;
      animation:float 18s ease-in-out infinite alternate;
    }
    .b1{width:520px;height:520px;background:#2f59ff; top:-120px; left:-120px; animation-delay:0s}
    .b2{width:420px;height:420px;background:#00e1ff; bottom:-120px; right:-80px; animation-delay:.6s}
    .b3{width:360px;height:360px;background:#7a5cff; top:50%; left:65%; transform:translate(-50%,-50%); animation-delay:1.2s}
    @keyframes float{
      0%{transform:translateY(0) translateX(0) scale(1)}
      100%{transform:translateY(30px) translateX(-20px) scale(1.05)}
    }

    /* Center grid */
    .wrap{position:relative; height:100%; display:grid; place-items:center; padding:20px}

    /* Card */
    .card{
      width:min(440px,92%); backdrop-filter: blur(16px);
      background:var(--card); border:1px solid var(--border);
      border-radius:22px; padding:26px 26px 22px; box-shadow:var(--shadow);
      animation:pop .35s ease;
    }
    @keyframes pop{from{transform:translateY(8px);opacity:0}to{transform:translateY(0);opacity:1}}

    .brand{
      display:flex; align-items:center; gap:12px; margin-bottom:10px;
    }
    .logo{
      width:56px;height:56px;border-radius:16px;
      background:
        radial-gradient(100% 100% at 25% 30%, #86e3ff, #49a3ff 60%, #2f59ff 100%);
      box-shadow:0 8px 24px rgba(73,163,255,.5);
    }
    h1{font-size:clamp(18px,2.4vw,24px);margin:0}
    .muted{color:var(--muted); margin:6px 0 0; font-size:14px}

    /* Form */
    form{margin-top:16px}
    .field{position:relative; margin-top:16px}
    .input{
      width:100%; padding:14px 44px 14px 14px; border-radius:14px;
      border:1px solid rgba(159,197,255,.25); outline:none;
      background:rgba(6,12,40,.6); color:var(--text);
      transition:border .2s, box-shadow .2s, background .2s;
    }
    .input::placeholder{color:#85a0da80}
    .input:focus{border-color:#8fbaff; box-shadow:0 0 0 4px rgba(73,163,255,.18)}
    .floating{
      position:absolute; left:12px; top:50%; transform:translateY(-50%);
      padding:0 6px; color:#9fb1e3; background:transparent; pointer-events:none; transition:.18s;
    }
    .input:focus + .floating,
    .input:not(:placeholder-shown) + .floating{
      top:-8px; font-size:12px; background:linear-gradient(180deg, transparent 40%, rgba(18,25,51,.8) 40%);
      color:#cde0ff;
    }

    .eye{
      position:absolute; right:10px; top:50%; transform:translateY(-50%);
      width:32px; height:32px; border-radius:10px;
      display:grid; place-items:center; cursor:pointer; user-select:none;
      border:1px solid rgba(159,197,255,.2); background:rgba(12,18,48,.6)
    }
    .caps{margin-top:6px; font-size:12px; color:#ffd2a1; display:none}

    .row{display:flex; justify-content:space-between; align-items:center; margin-top:10px}
    .remember{display:flex; align-items:center; gap:8px; font-size:13px; color:#c6d4ff}

    .btn{
      width:100%; margin-top:18px; padding:12px 14px; border:none; cursor:pointer;
      border-radius:14px; background:linear-gradient(135deg, var(--accent), var(--accent-2));
      color:#061024; font-weight:800; letter-spacing:.3px; transition:transform .05s, filter .2s;
    }
    .btn:active{transform:translateY(1px)}
    .btn[disabled]{opacity:.7; cursor:not-allowed}

    /* Toast / error bubble */
    .toast{
      display:none; margin-top:12px; padding:10px 12px; border-radius:12px;
      border:1px solid rgba(255,107,107,.45); background:rgba(255,107,107,.12);
      color:#ffd7d7; font-size:14px;
    }
    .toast.show{display:block; animation:fade .25s ease}
    @keyframes fade{from{opacity:0}to{opacity:1}}

    /* Shake on error */
    .shake{animation:shake .35s ease}
    @keyframes shake{
      10%,90%{transform:translateX(-1px)}
      20%,80%{transform:translateX(2px)}
      30%,50%,70%{transform:translateX(-4px)}
      40%,60%{transform:translateX(4px)}
    }

    /* Footer mini text */
    .foot{margin-top:12px; text-align:center; color:#9fb1e3; font-size:12px}
    a.link{color:#9fc5ff; text-decoration:none}
    a.link:hover{text-decoration:underline}
  </style>
</head>
<body>
  <!-- animated background blobs -->
  <div class="b1 blob"></div>
  <div class="b2 blob"></div>
  <div class="b3 blob"></div>

  <div class="wrap">
    <div class="card" id="card">
      <div class="brand">
        <div class="logo"></div>
        <div>
          <h1>Integrated Environmental Solution</h1>
          <p class="muted">Sign in to continue to your workspace</p>
        </div>
      </div>

      <?php if ($error): ?>
        <div id="serverToast" class="toast show"><?= htmlspecialchars($error) ?></div>
      <?php else: ?>
        <div id="serverToast" class="toast"></div>
      <?php endif; ?>

      <form id="loginForm" method="post" action="">
        <input type="hidden" name="csrf" value="<?= htmlspecialchars($_SESSION['csrf']) ?>">

        <div class="field">
          <input class="input" id="username" name="username" type="text" autocomplete="username"
                 placeholder=" " required>
          <label for="username" class="floating">Username</label>
        </div>

        <div class="field">
          <input class="input" id="pwd" name="pwd" type="password" autocomplete="current-password"
                 placeholder=" " required>
          <label for="pwd" class="floating">Password</label>
          <div class="eye" id="togglePwd" title="Show/Hide password">👁</div>
        </div>

        <div id="caps" class="caps">Caps Lock is ON</div>

        <div class="row">
          <label class="remember">
            <input type="checkbox" id="remember"> Remember me
          </label>
          <a href="#" class="link" onclick="event.preventDefault();alert('Ask admin to reset your password.');">Forgot password?</a>
        </div>

        <button class="btn" id="submitBtn" type="submit">Sign In</button>
      </form>

      <div class="foot">© <?= date('Y') ?> Environmental Informatics</div>
    </div>
  </div>

  <script>
    // Show/Hide password
    const pwd = document.getElementById('pwd');
    const togglePwd = document.getElementById('togglePwd');
    togglePwd.addEventListener('click', () => {
      pwd.type = (pwd.type === 'password') ? 'text' : 'password';
      togglePwd.textContent = (pwd.type === 'password') ? '👁' : '🙈';
    });

    // Caps Lock detector
    const caps = document.getElementById('caps');
    ['keyup','keydown'].forEach(evt =>
      pwd.addEventListener(evt, e => {
        caps.style.display = e.getModifierState && e.getModifierState('CapsLock') ? 'block' : 'none';
      })
    );

    // Button loading state + basic client validation
    const form = document.getElementById('loginForm');
    const btn  = document.getElementById('submitBtn');
    const card = document.getElementById('card');
    const toast = document.getElementById('serverToast');

    form.addEventListener('submit', (e) => {
      if (!form.checkValidity()) {
        e.preventDefault();
        card.classList.remove('shake'); // restart animation
        void card.offsetWidth;
        card.classList.add('shake');
        toast.textContent = 'Please fill in both fields.';
        toast.classList.add('show');
        return;
      }
      btn.disabled = true;
      const original = btn.textContent;
      btn.textContent = 'Signing in…';
      setTimeout(() => { btn.textContent = original; btn.disabled = false; }, 4000); // safety reset
    });

    // Focus username on load
    window.addEventListener('load', () => {
      const u = document.getElementById('username');
      if (u) u.focus();
    });
  </script>
</body>
</html>
