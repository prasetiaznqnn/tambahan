<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Form Pengunjung - PT. Elastomix Indonesia</title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
    rel="stylesheet" />
  <style>
    body {
      background-color: #f8f9fa;
    }
  </style>
</head>

<body>
  <div class="container mt-5">
    <h1 class="text-center">Form Data Pengunjung</h1>
    <form action="halaman_konfirmasi.html" method="GET">
      <div class="mb-3">
        <label for="nomor" class="form-label">Nomor:</label>
        <input
          type="text"
          class="form-control"
          id="nomor"
          name="nomor"
          required />
      </div>
      <div class="mb-3">
        <label for="nama" class="form-label">Nama:</label>
        <input
          type="text"
          class="form-control"
          id="nama"
          name="nama"
          required />
      </div>
      <div class="mb-3">
        <label for="nomor_id" class="form-label">Nomor ID:</label>
        <input
          type="text"
          class="form-control"
          id="nomor_id"
          name="nomor_id"
          required />
      </div>
      <div class="mb-3">
        <label for="jumlah_kendaraan" class="form-label">Jumlah Kendaraan:</label>
        <input
          type="number"
          class="form-control"
          id="jumlah_kendaraan"
          name="jumlah_kendaraan"
          required />
      </div>
      <div class="mb-3">
        <label for="perusahaan" class="form-label">Perusahaan:</label>
        <input
          type="text"
          class="form-control"
          id="perusahaan"
          name="perusahaan"
          required />
      </div>
      <div class="mb-3">
        <label for="keperluan" class="form-label">Keperluan:</label>
        <input
          type="text"
          class="form-control"
          id="keperluan"
          name="keperluan"
          required />
      </div>
      <div class="mb-3">
        <label class="form-label">Sudah Membuat Janji Bertemu:</label>
        <div>
          <input type="radio" id="ya" name="janji" value="ya" required />
          <label for="ya">Ya</label>
          <input
            type="radio"
            id="tidak"
            name="janji"
            value="tidak"
            required />
          <label for="tidak">Tidak</label>
        </div>
      </div>
      <div class="mb-3">
        <label for="nomor_kendaraan" class="form-label">Nomor Kendaraan:</label>
        <input
          type="text"
          class="form-control"
          id="nomor_kendaraan"
          name="nomor_kendaraan"
          required />
      </div>
      <button type="submit" class="btn btn-primary">Kirim Data</button>
    </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
