<?php
require_once __DIR__ . '/common.php';


$toast = '';

// Handle PDF upload (when posted via AJAX from index shell)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['doUpload'])) {
  $csrf = $_POST['csrf'] ?? '';
  $category = $_POST['category'] ?? '';
  if (!hash_equals($_SESSION['csrf_admin'], $csrf)) {
    $toast = 'Invalid session. Please refresh.';
  } elseif (!in_array($category, $CATEGORIES, true)) {
    $toast = 'Invalid category.';
  } elseif (!isset($_FILES['doc']) || $_FILES['doc']['error'] !== UPLOAD_ERR_OK) {
    $toast = 'No file or upload error.';
  } else {
    $maxBytes = 10 * 1024 * 1024;
    if ($_FILES['doc']['size'] > $maxBytes) {
      $toast = 'File too large. Max 10 MB.';
    } else {
      $orig = $_FILES['doc']['name'];
      $ext  = strtolower(pathinfo($orig, PATHINFO_EXTENSION));
      if ($ext !== 'pdf') {
        $toast = 'Only PDF files are allowed.';
      } else {
        $finfo = new finfo(FILEINFO_MIME_TYPE);
        $mime  = $finfo->file($_FILES['doc']['tmp_name']);
        if ($mime !== 'application/pdf') {
          $toast = 'Invalid MIME type (PDF only).';
        } else {
          $safeBase  = pathinfo(sanitize_name($orig), PATHINFO_FILENAME);
          $finalName = date('Ymd_His') . '_' . bin2hex(random_bytes(3)) . '_' . $safeBase . '.pdf';
          $safeCat   = preg_replace('/[^a-z0-9_\- ]+/i','_', $category);
          $target    = $UPLOAD_ROOT . '/' . $safeCat . '/' . $finalName;

          if (move_uploaded_file($_FILES['doc']['tmp_name'], $target)) {
            $toast = 'Upload successful.';
          } else {
            $toast = 'Failed to save file.';
          }
        }
      }
    }
  }
}

// Build table
$files = gather_all_files($CATEGORIES, $UPLOAD_ROOT, $UPLOAD_URL);
?>
<div class="card" style="margin-bottom:12px">
  <div class="toolbar" style="display:flex;gap:10px;align-items:center;justify-content:space-between;margin-bottom:10px">
    <h3>Info Centre — All Documents</h3>
    <div style="display:flex;gap:8px">
      <input id="q" class="search" type="search" placeholder="Search file name…" style="min-width:220px;max-width:340px;width:100%;padding:10px;border-radius:12px;border:1px solid #2c3b77;background:#0e1533;color:#cfe0ff">
      <select id="catFilter" class="filter" style="padding:10px;border-radius:12px;border:1px solid #2c3b77;background:#0e1533;color:#cfe0ff">
        <option value="">All Categories</option>
        <?php foreach ($CATEGORIES as $c): ?>
          <option value="<?= htmlspecialchars($c) ?>"><?= htmlspecialchars($c) ?></option>
        <?php endforeach; ?>
      </select>
    </div>
  </div>

  <?php if ($toast): ?>
    <div class="toast <?= ($toast === 'Upload successful.') ? 'ok' : 'err' ?> show" id="pageToast" style="padding:10px 12px;border-radius:12px;margin-bottom:10px"></div>
    <script>document.getElementById('pageToast').textContent = <?= json_encode($toast) ?>;</script>
  <?php endif; ?>

  <?php if (empty($files)): ?>
    <p class="muted">No files uploaded yet.</p>
  <?php else: ?>
    <table id="docTable">
      <thead>
        <tr>
          <th>Category</th>
          <th>File</th>
          <th class="nowrap">Size</th>
          <th class="nowrap">Uploaded</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      <?php foreach ($files as $f): ?>
        <tr data-cat="<?= htmlspecialchars($f['cat']) ?>">
          <td><?= htmlspecialchars($f['cat']) ?></td>
          <td><?= htmlspecialchars($f['name']) ?></td>
          <td class="nowrap"><?= number_format($f['size']/1024, 1) ?> KB</td>
          <td class="nowrap"><?= date('Y-m-d H:i', $f['time']) ?></td>
          <td class="nowrap"><a class="btn" href="<?= htmlspecialchars($f['url']) ?>" target="_blank" style="padding:8px 12px;border-radius:10px;background:linear-gradient(135deg,#49a3ff,#86e3ff);color:#041024;text-decoration:none;font-weight:800">Download</a></td>
        </tr>
      <?php endforeach; ?>
      </tbody>
    </table>
  <?php endif; ?>
</div>

<!-- Floating + button and modal -->
<button class="fab" id="fab" title="Add new document" style="position:fixed;right:28px;bottom:28px;width:56px;height:56px;border-radius:50%;display:grid;place-items:center;cursor:pointer;background:linear-gradient(135deg,#49a3ff,#86e3ff);color:#041024;font-size:30px;font-weight:900;box-shadow:0 10px 30px rgba(0,0,0,.4);border:none">＋</button>

<div class="modal-wrap" id="modalWrap" role="dialog" aria-modal="true" aria-hidden="true"
     style="position:fixed;inset:0;background:rgba(0,0,0,.45);display:none;align-items:center;justify-content:center;padding:18px">
  <div class="modal" style="width:min(520px,96%);background:#121933;border:1px solid #223069;border-radius:16px;box-shadow:0 22px 80px rgba(0,0,0,.45);padding:18px">
    <h4 style="margin:0 0 10px">Upload New PDF</h4>
    <form id="uploadForm" method="post" enctype="multipart/form-data" data-ajax>
      <input type="hidden" name="csrf" value="<?= htmlspecialchars($CSRF) ?>">
      <label class="muted" for="category">Category</label>
      <select name="category" id="category" required
              style="width:100%;padding:12px;border-radius:12px;border:1px solid #2c3b77;background:#0e1533;color:#cfe0ff">
        <option value="" disabled selected>-- Choose Category --</option>
        <?php foreach ($CATEGORIES as $c): ?>
          <option value="<?= htmlspecialchars($c) ?>"><?= htmlspecialchars($c) ?></option>
        <?php endforeach; ?>
      </select>

      <label class="muted" for="doc" style="margin-top:10px">Choose PDF (max 10MB)</label>
      <input type="file" name="doc" id="doc" accept="application/pdf" required
             style="width:100%;padding:12px;border-radius:12px;border:1px solid #2c3b77;background:#0e1533;color:#cfe0ff">

      <div class="row" style="display:flex;gap:10px;justify-content:flex-end;margin-top:14px">
        <button type="button" class="close" id="closeModal" style="background:transparent;border:1px solid #2a3a77;color:#cfe0ff;padding:6px 10px;border-radius:10px;cursor:pointer">
          Cancel
        </button>
        <button type="submit" name="doUpload" class="btn" id="uploadBtn"
                style="padding:10px 14px;border:none;border-radius:12px;cursor:pointer;background:linear-gradient(135deg,#49a3ff,#86e3ff);color:#041024;font-weight:800;letter-spacing:.2px">
          Upload
        </button>
      </div>
    </form>
    <div id="modalToast" class="toast" style="padding:10px 12px;border-radius:12px;margin-top:10px;display:none"></div>
  </div>
</div>

<script>
  // Modal + basic client checks (works when embedded via AJAX)
  const fab = document.getElementById('fab');
  const wrap = document.getElementById('modalWrap');
  const closeBtn = document.getElementById('closeModal');
  const form = document.getElementById('uploadForm');
  const btn  = document.getElementById('uploadBtn');
  const mtoast = document.getElementById('modalToast');

  const openM = () => { wrap.style.display='flex'; wrap.setAttribute('aria-hidden','false'); }
  const closeM= () => { wrap.style.display='none'; wrap.setAttribute('aria-hidden','true'); if (mtoast){mtoast.style.display='none'; mtoast.textContent='';} if(btn){btn.disabled=false; btn.textContent='Upload';} }
  if (fab) fab.addEventListener('click', openM);
  if (closeBtn) closeBtn.addEventListener('click', closeM);
  if (wrap) wrap.addEventListener('click', (e)=>{ if (e.target===wrap) closeM(); });

  if (form) {
    form.addEventListener('submit', (e) => {
      const cat  = form.querySelector('#category')?.value || '';
      const file = form.querySelector('#doc')?.files[0];
      if (!cat) { e.preventDefault(); if(mtoast){mtoast.textContent='Please choose a category.'; mtoast.style.display='block';} return; }
      if (!file) { e.preventDefault(); if(mtoast){mtoast.textContent='Please choose a PDF file.'; mtoast.style.display='block';} return; }
      if (file.type !== 'application/pdf') { e.preventDefault(); if(mtoast){mtoast.textContent='Only PDF files are allowed.'; mtoast.style.display='block';} return; }
      if (file.size > (10*1024*1024)) { e.preventDefault(); if(mtoast){mtoast.textContent='File too large. Max 10 MB.'; mtoast.style.display='block';} return; }
      if (btn){ btn.disabled=true; btn.textContent='Uploading…'; }
    });
  }

  // Filter + search
  const q = document.getElementById('q');
  const catFilter = document.getElementById('catFilter');
  const table = document.getElementById('docTable');
  function applyFilter(){
    if (!table) return;
    const term = (q?.value || '').toLowerCase();
    const cat  = catFilter?.value || '';
    for (const tr of table.querySelectorAll('tbody tr')) {
      const file = tr.children[1]?.textContent?.toLowerCase() ?? '';
      const rowCat = tr.dataset.cat || '';
      const matchText = file.includes(term);
      const matchCat  = !cat || (rowCat === cat);
      tr.style.display = (matchText && matchCat) ? '' : 'none';
    }
  }
  q?.addEventListener('input', applyFilter);
  catFilter?.addEventListener('change', applyFilter);
</script>
