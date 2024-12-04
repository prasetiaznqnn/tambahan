<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Form Permintaan Hardware</title>
    <link rel="icon" href="">
    <link
        rel="stylesheet"
        href="../INVENTORY EMIX/INVENTORY-IT/css/bootstrap.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .form-table th,
        .form-table td {
            padding: 5px;
        }

        .form-title {
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .no-border td {
            border: none !important;
        }

        .signature-table th,
        .signature-table td {
            padding: 20px;
            text-align: center;
            border: none !important;
        }
    </style>
</head>

<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <h5 class="form-title">FORMULIR PERMINTAAN HARDWARE</h5>
            </div>
        </div>
        <form action="submit_form.php" method="post">
            <table class="table table-bordered form-table mb-5">
                <tr>
                    <th>Req No</th>
                    <td colspan="3">
                        <input
                            type="text"
                            name="req_no"
                            class="form-control"
                            placeholder="REQ-HARWD-"
                            readonly />
                    </td>
                    <th>Doc. No</th>
                    <td colspan="1">FO-ITE-06-00</td>
                </tr>
                <tr>
                    <th colspan="4" class="bg-secondary text text-light">
                        Data Personal (Diisi Oleh User)
                    </th>
                    <th>Tgl Terbit</th>
                    <td><input type="date" name="tanggal_terbit[]" id="" style="border: 0;" onclick="this.showPicker()" value="<?= date('Y-m-d'); ?>"></td>
                </tr>
                <tr>

                    <th>Nama</th>
                    <td colspan="6">
                        <input type="text" name="nama" class="form-control" style="border: 0;" />
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <th>Jabatan</th>
                    <td colspan="6">
                        <input type="text" name="jabatan" class="form-control" style="border: 0;" />
                    </td>
                </tr>
                <tr>
                    <th>Departemen</th>
                    <td colspan="6">
                        <input type="text" name="departemen" class="form-control" style="border: 0;" />
                    </td>
                </tr>
                <tr>
                    <th>Job Description</th>
                    <td colspan="6">
                        <textarea
                            name="job_desc"
                            class="form-control"
                            rows="2" style="border: 0;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th>Qty Permintaan</th>
                    <td colspan="6">
                        <input type="number" style="border: 0;" name="qty" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <th colspan="7">Keterangan Peruntukan Hardware</th>
                </tr>
                <tr>
                    <td colspan="7">
                        <textarea
                            name="keterangan"
                            class="form-control"
                            rows="3"></textarea>
                    </td>
                </tr>
            </table>

            <table class="table no-border">
                <tr>
                    <th colspan="7" class="bg-secondary text-light">
                        Spesifikasi Hardware (Diisi Oleh PGA Dept)
                    </th>
                </tr>
                <tr>
                    <th><b>Hardware</b></th>
                </tr>
                <tr>
                    <th>Jenis</th>
                    <td><input type="radio" name="hardware[]" value="Notebook" /> Notebook</td>
                    <td><input type="radio" name="hardware[]" value="PC" /> PC</td>
                    <td><input type="radio" name="hardware[]" value="All in One PC" /> All in One PC</td>
                    <td><input type="radio" name="hardware[]" value="Mini PC" /> Mini PC</td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <th>Processor</th>
                    <td colspan="3">
                        <input type="text" name="processor" class="form-control" />
                    </td>
                </tr>

                <tr>
                    <th>RAM</th>
                    <td><input type="radio" name="Ram" value="12" /> 8 GB</td>
                    <td><input type="radio" name="Ram" value="15" /> 16 GB</td>
                    <td><input type="radio" name="Ram" value="24" /> > 16 GB</td>
                    </select>
                    </td>
                </tr>

                <tr>
                    <th>Monitor</th>
                    <td><input type="radio" name="monitor" value="12" /> 12 inc</td>
                    <td><input type="radio" name="monitor" value="15" /> 15 inc</td>
                    <td><input type="radio" name="monitor" value="24" /> 24 inc</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th><b>Software</b></th>
                </tr>
                <tr>
                    <th>Office</th>
                    <td><input type="radio" name="office" value="2019" /> 2019</td>
                    <td><input type="radio" name="office" value="2020" /> 2020</td>
                    <td><input type="radio" name="office" value="2021" /> 2021</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th>Lain-Lain</th>
                    <td colspan="6">
                        <textarea
                            name="lain_lain"
                            class="form-control"
                            rows="2"></textarea>
                    </td>
                </tr>
            </table>
            <div class="text-right">
                <button type="submit" class="btn btn-primary mb-5">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>
