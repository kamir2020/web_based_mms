<?php
require_once __DIR__ . '/common.php';

// Build stats from filesystem
$files      = gather_all_files($CATEGORIES, $UPLOAD_ROOT, $UPLOAD_URL);
$catCounts  = array_fill_keys($CATEGORIES, 0);
$totalSize  = 0;
foreach ($files as $f) {
  $catCounts[$f['cat']]++;
  $totalSize += $f['size'];
}
$totalDocs  = array_sum($catCounts);
$recent     = array_slice($files, 0, 5);
?>
<div class="card" style="margin-bottom:16px">
  <h3>Dashboard</h3>
  <p class="muted">Overview of documents stored in the Info Centre.</p>
  <div class="kpis" style="display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-top:12px">
    <div class="kpi" style="background:#0e1533;border:1px solid #20396d;border-radius:14px;padding:14px">
      <div class="muted">Total Documents</div>
      <div class="num" style="font-weight:800;font-size:22px"><?= (int)$totalDocs ?></div>
    </div>
    <div class="kpi" style="background:#0e1533;border:1px solid #20396d;border-radius:14px;padding:14px">
      <div class="muted">Total Size</div>
      <div class="num" style="font-weight:800;font-size:22px"><?= number_format($totalSize/1024/1024, 2) ?> MB</div>
    </div>
    <div class="kpi" style="background:#0e1533;border:1px solid #20396d;border-radius:14px;padding:14px">
      <div class="muted">Categories</div>
      <div class="num" style="font-weight:800;font-size:22px"><?= count($CATEGORIES) ?></div>
    </div>
  </div>
</div>

<div class="card" style="margin-bottom:16px">
  <h3 style="margin-top:0">Per-Category Count</h3>
  <div style="margin-top:8px">
    <canvas id="catBar" style="width:100%;height:220px;display:block"></canvas>
  </div>
</div>

<div class="card">
  <h3 style="margin-top:0">Recent Uploads</h3>
  <?php if (empty($recent)): ?>
    <p class="muted">No recent uploads.</p>
  <?php else: ?>
    <table>
      <thead>
        <tr><th>Category</th><th>File</th><th class="nowrap">Size</th><th class="nowrap">Uploaded</th><th></th></tr>
      </thead>
      <tbody>
        <?php foreach ($recent as $r): ?>
          <tr>
            <td><?= htmlspecialchars($r['cat']) ?></td>
            <td><?= htmlspecialchars($r['name']) ?></td>
            <td class="nowrap"><?= number_format($r['size']/1024, 1) ?> KB</td>
            <td class="nowrap"><?= date('Y-m-d H:i', $r['time']) ?></td>
            <td class="nowrap"><a class="btn" href="<?= htmlspecialchars($r['url']) ?>" target="_blank">Download</a></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  <?php endif; ?>
</div>

<script>
  // Draw simple bar chart (no external libs)
  const labels = <?= json_encode(array_keys($catCounts)) ?>;
  const values = <?= json_encode(array_values($catCounts)) ?>;
  (function(){
    const el = document.getElementById('catBar'); if (!el) return;
    const ctx = el.getContext('2d');
    const W = el.clientWidth, H = el.clientHeight;
    el.width = W * devicePixelRatio; el.height = H * devicePixelRatio;
    ctx.scale(devicePixelRatio, devicePixelRatio);

    const max = Math.max(1, ...values);
    const pad = {t:16,r:16,b:28,l:28};
    const innerW = W - pad.l - pad.r;
    const innerH = H - pad.t - pad.b;
    const bw = innerW / (values.length * 1.3);
    const gap = bw * 0.3;

    ctx.strokeStyle = '#20396d';
    ctx.beginPath();
    ctx.moveTo(pad.l, pad.t + innerH);
    ctx.lineTo(pad.l + innerW, pad.t + innerH);
    ctx.stroke();

    for (let i=0;i<values.length;i++){
      const x = pad.l + i * (bw + gap) + gap;
      const h = (values[i] / max) * (innerH - 10);
      const y = pad.t + innerH - h;

      const g = ctx.createLinearGradient(0, y, 0, y+h);
      g.addColorStop(0, '#86e3ff'); g.addColorStop(1, '#49a3ff');
      ctx.fillStyle = g;
      ctx.fillRect(x, y, bw, h);

      ctx.fillStyle = '#cfe0ff';
      ctx.font = '12px Inter, Arial';
      const lbl = labels[i].replace(/Standard Operating Procedure \(SOP\)/,'SOP');
      ctx.save(); ctx.translate(x + bw/2, pad.t + innerH + 14); ctx.rotate(-0.45); ctx.fillText(lbl, 0, 0); ctx.restore();
      ctx.fillText(values[i], x + bw/2 - 4, y - 4);
    }
  })();
</script>
