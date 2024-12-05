<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Form Pengunjung - PT. Elastomix Indonesia</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style>
      body {
        background-image: url(../assets/img/WhatsApp\ Image\ 2024-12-04\ at\ 08.39.56_4fb37ef0.jpg);
      }

      
      form {
        max-width: 500px;
        /* Batas lebar form */
      }

      .textarea-container {
        display: flex;
        justify-content: space-between;
      }

      textarea {
        width: 80%; /* Sesuaikan lebar textarea */
      }

      button {
        width: 18%; /* Tombol akan menempati 18% dari lebar form */
        margin-left: 10px; /* Jarak antara textarea dan tombol */
      }
    </style>
  </head>

  <body>
    <div class="container-fluid mt-2">
      <h1 class="mb-4">Form Data Pengunjung</h1>
      <form action="halaman_konfirmasi.html" method="GET">
        <div class="mb-3">
          <input
            type="text"
            placeholder="No:"
            class="form-control"
            id="nomor"
            name="nomor"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            class="form-control"
            id="nama"
            name="nama"
            placeholder="Nama:"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            class="form-control"
            id="nomor_id"
            name="nomor_id"
            placeholder="Nomor Id:"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="number"
            placeholder="Jumlah "
            class="form-control"
            id="jumlah_kendaraan"
            name="jumlah_kendaraan"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            placeholder="Perusahaan"
            class="form-control"
            id="perusahaan"
            name="perusahaan"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            placeholder="No Kendaraan"
            class="form-control"
            id="nomor_kendaraan"
            name="nomor_kendaraan"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            placeholder="Jenis Kendaraan"
            class="form-control"
            id="jenis_kendaraan"
            name="jenis_kendaraan"
            required
          />
        </div>
        <div class="mb-3">
          <input
            type="text"
            placeholder="Bertemu Dengan"
            class="form-control"
            id="bertemu"
            name="bertemu"
            required
          />
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
              required
            />
            <label for="tidak">Tidak</label>
          </div>
        </div>
        <div class="mb-3 d-flex align-items-center">
            <textarea placeholder="Keperluan" class="form-control me-2" id="keperluan" name="keperluan" required style="resize: none;"></textarea>
        </div>
        <div>
        </div>  
        <button type="submit" class="btn btn-primary">Kirim Data</button>
        </div>
      </form>
    </div>
    <script src="../js/bootstrap.bundle.min.js"></script>
  </body>
</html>
