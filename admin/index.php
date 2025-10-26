<?php
require_once __DIR__ . '/common.php';


// Server-side fallback include for first render or no-JS:
$page = $_GET['page'] ?? 'dashboard';
$valid = ['dashboard' => 'dashboard.php', 'info' => 'info_centre.php'];
$contentFile = $valid[$page] ?? 'dashboard.php';
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Admin — Integrated Environmental Solution</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    :root{
      --bg:#0b1020; --sidebar:#0e1533; --card:#121933; --border:#223069;
      --text:#eaf0ff; --muted:#9fb1e3; --accent:#49a3ff; --accent2:#86e3ff;
      --danger:#ff6b6b; --ok:#3ddc97; --shadow:0 22px 80px rgba(0,0,0,.45);
    }
    *{box-sizing:border-box}
    body{
      margin:0; font-family:Inter,system-ui,Segoe UI,Roboto,Arial,sans-serif; color:var(--text);
      background:radial-gradient(1200px 800px at 20% 10%, #142046, #0b1020);
      min-height:100vh; display:flex;
    }
    .sidebar{
      width:270px; background:linear-gradient(180deg, var(--sidebar), #0a1130);
      border-right:1px solid var(--border); padding:20px; position:sticky; top:0; height:100vh;
    }
    .logo{
      width:48px; height:48px; border-radius:14px; margin-bottom:10px;
      background:radial-gradient(120% 120% at 20% 25%, #86e3ff, #49a3ff 60%, #2f59ff 100%);
      box-shadow:0 8px 24px rgba(73,163,255,.45);
    }
    .brand h2{margin:0 0 2px; font-size:18px}
    .brand .sub{color:var(--muted); font-size:12px; margin:0 0 16px}
    .nav{display:flex; flex-direction:column; gap:6px; margin-top:12px}
    .nav a{
      display:flex; align-items:center; gap:10px; padding:10px 12px; border-radius:12px;
      color:#cfe0ff; text-decoration:none; border:1px solid transparent;
    }
    .nav a.active, .nav a:hover{ background:rgba(73,163,255,.12); border-color:rgba(73,163,255,.3); color:#fff; }
    .spacer{flex:1}
    .logout{
      display:flex; align-items:center; gap:10px; padding:10px 12px; border-radius:12px;
      border:1px solid rgba(255,255,255,.12); color:#ffdada; text-decoration:none;
      background:rgba(255,107,107,.12);
    }

    .content{flex:1; display:grid; grid-template-rows:auto 1fr; padding:26px}
    .topbar{display:flex; justify-content:space-between; align-items:center; margin-bottom:18px}
    .pill{background:#0d2144; border:1px solid #20396d; color:#9fc5ff; padding:8px 12px; border-radius:999px; font-size:13px}
    .viewport{min-height:60vh}
  </style>
</head>
<body>
  <aside class="sidebar">
    <div class="brand">
      <div class="logo"></div>
      <h2>Admin Console</h2>
      <p class="sub">Integrated Environmental Solution</p>
    </div>

    <nav class="nav" id="nav">
      <a href="?page=dashboard" data-route="dashboard" class="<?= $page==='dashboard'?'active':'' ?>">📊 Dashboard</a>
      <a href="?page=info"      data-route="info"      class="<?= $page==='info'?'active':'' ?>">📁 Info Centre</a>
    </nav>

    <div class="spacer"></div>
    <a class="logout" href="../logout.php">🚪 Logout</a>
  </aside>

  <main class="content">
    <div class="topbar">
      <div class="pill">Signed in as <strong>@<?= $user ?></strong></div>
      <div class="muted"><?= date('Y-m-d H:i:s') ?></div>
    </div>

    <!-- Middle content: SSR fallback render -->
    <div id="content" class="viewport">
      <?php require __DIR__ . '/' . $contentFile; ?>
    </div>
  </main>

  <script>
    // SPA-like loader: swap middle only, keep sidebar/topbar
    const content = document.getElementById('content');
    const nav = document.getElementById('nav');

    function setActive(route){
      for (const a of nav.querySelectorAll('a')) {
        a.classList.toggle('active', a.dataset.route === route);
      }
    }

    async function loadRoute(route, push=true) {
      const url = route === 'info' ? 'info_centre.php' : 'dashboard.php';
      try {
        const res = await fetch(url, {credentials: 'same-origin'});
        if (!res.ok) throw new Error('Load failed');
        const html = await res.text();
        content.innerHTML = html;
        if (push) history.pushState({route}, '', '?page=' + route);
        setActive(route);
        wireAjaxForms(); // re-bind AJAX form (Info Centre upload)
      } catch (e) {
        content.innerHTML = '<div class="card" style="padding:18px;border:1px solid #223069;border-radius:18px;background:#121933">Failed to load content.</div>';
      }
    }

    // Intercept nav clicks
    nav.addEventListener('click', (e) => {
      const a = e.target.closest('a[data-route]');
      if (!a) return;
      e.preventDefault();
      loadRoute(a.dataset.route);
    });

    // Handle back/forward
    window.addEventListener('popstate', (e) => {
      const route = (e.state && e.state.route) || (new URL(location).searchParams.get('page') || 'dashboard');
      loadRoute(route, false);
    });

    // AJAX-submit any form with [data-ajax] in loaded content
    function wireAjaxForms(){
      const form = content.querySelector('form[data-ajax]');
      if (!form) return;
      form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const btn = form.querySelector('button[type="submit"]');
        if (btn) { btn.disabled = true; btn.textContent = 'Uploading…'; }
        try {
          const res = await fetch('info_centre.php', {
            method: 'POST',
            body: new FormData(form),
            credentials: 'same-origin'
          });
          const html = await res.text();
          content.innerHTML = html;       // re-render list + toasts
          wireAjaxForms();                // re-bind after re-render
        } catch (err) {
          alert('Upload failed.');
        } finally {
          if (btn) { btn.disabled = false; btn.textContent = 'Upload'; }
        }
      });
    }

    // Initial: ensure proper state
    window.addEventListener('load', () => {
      const sp = new URL(location).searchParams.get('page') || 'dashboard';
      setActive(sp);
      wireAjaxForms();
    });
  </script>
</body>
</html>
