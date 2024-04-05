<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title_pdf; ?></title>
  <style>
    #table {
      font-family: "Arial", sans-serif;
      font-size: 12px;
      border-collapse: collapse;
      width: 100%;
      border: 1px solid black;
    }

    #table2 {
      font-family: "Arial", sans-serif;
      font-size: 12px;
      border-collapse: collapse;
      width: 100%;
      border: 1px #ffff;
    }

    .txt {
      font-family: "Arial", sans-serif;
      font-size: 14px;
    }

    .title {
      font-family: "Arial", sans-serif;
      font-size: 14px;
      padding : 10px;
    }

    #table td,
    #table th {
      border: 1px solid #ddd;
      padding: 8px;
      border: 1px solid black;
    }

    #table tr:nth-child(even) {
      background-color: #ffff;
    }

    #table tr:hover {
      background-color: #ddd;
    }

    .top {
      padding-top: 10px;
      padding-bottom: 10px;
      text-align: left;
      background-color: silver ;
      border: 1px solid black;
    }

    .sub-top {
      padding-top: 10px;
      padding-bottom: 10px;
      text-align: left;
      background-color: #DCDCDC;
      border: 1px solid black;
    }
  </style>
</head>

<body style = "padding : 10px;">
  <div class="title" style="text-align:center;">
    <!-- <b><?= $title_pdf ?></b> -->
    <b>LAPORAN HASIL ISIAN MONITORING AKHLAKUL KARIMAH SISWA SMP MUHAMMADIYAH 2 TAMAN</b>
  </div>
  <br>
  <table id="table2">
  <tbody>
      <tr>
        <td style="width : 20%">Nama Peserta Didik</td>
        <td>: <?= $data_Siswa->nama ?></td>
      </tr>
      <tr>
        <td style="width : 20%">NIS</td>
        <td>: <?= $data_Siswa->nis ?></td>
      </tr>
      <tr>
        <td style="width : 20%">Jenis Kelamin</td>
        <td>: <?= $data_Siswa->jk ?></td>
      </tr>
    </tbody>
  </table>
  <!-- <div>
    <p class ="txt" style="margin: 0px!important;">Nama : <?= $data_Siswa->nama ?></p>
    <p class ="txt" style="margin: 0px!important;">NIS : <?= $data_Siswa->nis ?></p>
    <p class ="txt" style="margin: 0px!important;">Jenis Kelamin : <?= $data_Siswa->jk ?></p>
  </div> -->
  <br>
  <br>
  <div>
    <p class ="txt" style="margin: 0px!important;"><b>I. PEMBIASAAN HABIT</b></p>
  </div>
  <br>
  <table id="table" style="page-break-after: always;">
    <thead class="top">
      <tr>
        <th style="text-align: center; width: 5%;">No.</th>
        <th style="text-align: center; width: 50%;">Jenis Pembiasaan</th>
        <th style="text-align: center; width: 5%;">Nilai</th>
        <th style="text-align: center; width: 5%;">Predikat</th>
      </tr>
    </thead>
    <thead class="sub-top">
      <tr>
        <th>A.</th>
        <th style="text-align: center;">Ibadah Wajib</th>
        <th style="text-align: center;"><?= getGradeNilai2($data_listNilai[0]['kat1']); ?></th>
        <th style="text-align: center;"><?= getGradeNilai($data_listNilai[0]['kat1']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">1.</td>
        <td>Sholat Shubuh</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per1']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per1']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">2.</td>
        <td>Sholat Dhuhur</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per2']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per2']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">3.</td>
        <td>Sholat Dhuhur</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per3']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per3']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">4.</td>
        <td>Sholat Ashar</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per4']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per4']); ?></td>
      </tr>
      <tr>
      <td scope="row" style="text-align: center;">5.</td>
        <td>Sholat Isya</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per5']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per5']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>B.</th>
        <th style="text-align: center;">Ibadah Sunnah</th>
        <th style="text-align: center;"><?= getGradeNilai2($data_listNilai[0]['kat2']); ?></td>
        <th style="text-align: center;"><?= getGradeNilai($data_listNilai[0]['kat2']); ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">1.</td>
        <td>Sholat Tahajud</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per6']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per6']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">2.</td>
        <td>Sholat Dhuha</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per7']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per7']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">3.</td>
        <td>Sholat Rawatib</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per8']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per8']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">4.</td>
        <td>Puasa Sunnah</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per9']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per9']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>C.</th>
        <th style="text-align: center;">Literasi</th>
        <th style="text-align: center;"><?= getGradeNilai2($data_listNilai[0]['kat3']); ?></td>
        <th style="text-align: center;"><?= getGradeNilai($data_listNilai[0]['kat3']); ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">1.</td>
        <td>Tadarus Al Qur'an</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per10']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per10']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">2.</td>
        <td>Membaca Buku Keagamaan</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per11']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per11']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">3.</td>
        <td>Membaca Buku Pelajaran</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per12']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per12']); ?></td>>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">4.</td>
        <td>Membaca Buku Pengembangan</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per13']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per13']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>C.</th>
        <th style="text-align: center;">Muamalah</th>
        <th style="text-align: center;"><?= getGradeNilai2($data_listNilai[0]['kat4']); ?></td>
        <th style="text-align: center;"><?= getGradeNilai($data_listNilai[0]['kat4']); ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">1.</td>
        <td>Mengikuti Kajian/Seminar</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per14']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per14']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">2.</td>
        <td>Meringkas Isi Kajian/Seminar</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per15']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per15']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">3.</td>
        <td>Infaq</td>
        <td style="text-align: center;"><?= getGradeNilaiPer2($data_listNilaiPer[0]['per16']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPer($data_listNilaiPer[0]['per16']); ?></td>>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th colspan="2" style="text-align: center;">Nilai</th>
        <th style="text-align: center;"><?= getGradeNilaiTotal($data_listNilai[0]['total_nilai']); ?></td>
        <th style="text-align: center;"><?= getGradeNilaiTotal2($data_listNilai[0]['total_nilai']); ?></td>
      </tr>
    </thead>
  </table>
  <div>
    <p class ="txt" style="margin: 0px!important;"><b>II. PANCASILA</b></p>
  </div>
  <br>
  <table id="table" style="page-break-after: always;">
    <thead class="top">
      <tr>
        <th style="text-align: center; width: 5%;">No.</th>
        <th style="text-align: center; width: 50%;">Indikator</th>
        <th style="text-align: center; width: 5%;">Nilai</th>
        <th style="text-align: center; width: 5%;">Predikat</th>
      </tr>
    </thead>
    <thead class="sub-top">
      <tr>
        <th>A.</th>
        <th>Beriman dan bertakwa kepada Allah subhanahu wa ta'ala</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP1']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP1']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">1.</td>
        <td>Berakhlak dalam beragama</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP1']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP1']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">2.</td>
        <td>Berakhlak terhadap diri pribadi</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP2']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP2']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">3.</td>
        <td>Berakhlak terhadap orang lain</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP3']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP3']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">4.</td>
        <td>Berakhlak terhadap alam</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP4']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP4']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">5.</td>
        <td>Berakhlak dalam bernegara</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP5']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP5']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>B.</th>
        <th>Berkebinekaan Global</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP2']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP2']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">6.</td>
        <td>Mengenal dan menghargai budaya</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP6']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP6']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">7.</td>
        <td>Kemampuan komunikasi interkultural dalam berinteraksi dengan sesama</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP7']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP7']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">8.</td>
        <td>Refleksi dan tanggung jawab terhadap pengalaman kebinekaan</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP8']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP8']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>C.</th>
        <th>Gotong Royong</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP3']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP3']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">9.</td>
        <td>Kolaborasi</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP9']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP9']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">10.</td>
        <td>Kepedulian</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP10']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP10']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">11.</td>
        <td>Berbagi</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP11']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP11']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>D.</th>
        <th>Mandiri</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP4']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP4']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">12.</td>
        <td>Kesadaran akan diri dan situasi yang dihadapi</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP12']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP12']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">13.</td>
        <td>Regulasi diri</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP13']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP13']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>E.</th>
        <th>Bernalar Kritis</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP5']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP5']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">14.</td>
        <td>Memperoleh dan memproses informasi dan gagasan</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP14']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP14']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">15.</td>
        <td>Menganalisis dan mengevaluasi penalaran</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP15']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP15']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">16.</td>
        <td>Merefleksi pikiran dan proses berpikir</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP16']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP16']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">17.</td>
        <td>Mengambil keputusan</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP17']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP17']); ?></td>
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th>F.</th>
        <th>Kreatif</th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat($data_listNilaiProfilKat[0]['katPP6']); ?></th>
        <th style="text-align: center;"><?= getGradeNilaiPPKat2($data_listNilaiProfilKat[0]['katPP6']); ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td scope="row" style="text-align: center;">18.</td>
        <td>Menghasilkan gagasan yang orisinal</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP18']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP18']); ?></td>
      </tr>
      <tr>
        <td scope="row" style="text-align: center;">19.</td>
        <td>Menghasilkan karya dan tindakan yang orisinal</td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer($data_listNilaiProfilPer[0]['perPP19']); ?></td>
        <td style="text-align: center;"><?= getGradeNilaiPPPer2($data_listNilaiProfilPer[0]['perPP19']); ?></td>
        <!-- <td style="text-align: center;"><?= $data_listJumlahBacaTahfidz[0]['count_baca']; ?></td> -->
      </tr>
    </tbody>
    <thead class="sub-top">
      <tr>
        <th colspan="2" style="text-align: center;">Nilai</th>
        <th style="text-align: center;"><?= getGradeNilaiPP2($data_listNilaiProfil[0]['count_nilai']); ?></td>
        <th style="text-align: center;"><?= getGradeNilaiPP($data_listNilaiProfil[0]['count_nilai']); ?></td>
      </tr>
    </thead>
  </table>
  <div>
    <p class ="txt" style="margin: 0px!important;"><b>III. TAHSIN DAN TAHFIDZUL QUR'AN</b></p>
  </div>
  <br>
  <table id="table">
    <thead class="top">
      <tr>
        <th style="text-align: center; width: 5%;">No.</th>
        <th style="text-align: center; width: 25%;">Keterangan</th>
        <th style="text-align: center; width: 15%;">Tahsin</th>
        <th style="text-align: center; width: 15%;">Tahfidz</th>
      </tr>
    </thead>
    <tr>
      <td scope="row" style="text-align: center;">1.</td>
      <td>Jumlah hari</td>
      <td style="text-align: center;">261 Hari</td>
      <td style="text-align: center;">261 Hari</td>
    </tr>
    <tr>
      <td scope="row" style="text-align: center;">2.</td>
      <td>Jumlah membaca</td>
      <td style="text-align: center;"><?= $data_listJumlahTahfidz[0]['count_baca']; ?></td>
      <td style="text-align: center;"><?= $data_listJumlahTahsin[0]['count_baca']; ?></td>
    </tr>
    <tr>
      <td scope="row" style="text-align: center;">3.</td>
      <td>Jumlah Surat dibaca/dihafal</td>
      <td style="text-align: center;"><?= $data_listJumlahTahfidz[0]['count_surat']; ?></td>
      <td style="text-align: center;"><?= $data_listJumlahTahsin[0]['count_surat']; ?></td>
    </tr>
    <tr>
      <td scope="row" style="text-align: center;">4.</td>
      <td>Jumlah Ayat dibaca/dihafal</td>
      <td style="text-align: center;"><?= $data_listJumlahTahfidz[0]['selisih_ayat']; ?></td>
      <td style="text-align: center;"><?= $data_listJumlahTahsin[0]['selisih_ayat']; ?></td>
    </tr>
    <tr>
      <td scope="row" style="text-align: center;">5.</td>
      <td>Surat Terakhir dibaca/dihafal</td>
      <td style="text-align: center;"><?= $data_listJumlahTahfidz[0]['surat_terbaru']; ?></td>
      <td style="text-align: center;"><?= $data_listJumlahTahsin[0]['surat_terbaru']; ?></td>
    </tr>
    <tr>
      <td scope="row" style="text-align: center;">6.</td>
      <td>Ayat Terakhir dibaca/dihafal</td>
      <td style="text-align: center;"><?= $data_listJumlahTahfidz[0]['ayat_terakhir']; ?></td>
      <td style="text-align: center;"><?= $data_listJumlahTahsin[0]['ayat_terakhir']; ?></td>
    </tr>
  </table>
  <br>
  <br>
  <div>
    <p class ="txt" style="margin: 0px!important;"><b>IV. REKOMENDASI</b></p>
  </div>
  <br>
  <div>
    <p style="margin: 0px!important; border: 1px solid #000; text-align: justify; font-family: Arial, sans-serif; font-size: 12px; padding: 5px;">
      <?= $data_Siswa->nama ?> sudah sangat baik dalam melaksanakan Ibadah Wajib selanjutnya agar bisa di pertahankan, skor
      Ibadah Wajib tertinggi adalah pada pelaksanaan sholat ashar, sedangkan yang terendah adalah pada sholat
      dhuhur perlu ditingkatkan. Pelaksanaan Ibadah Sunnah sudah sangat baik tinggal dipertahankan, skor tertinggi
      adalah pada pelaksanaan sholat tahajud, sedangkan yang terendah adalah pada ibadah puasa perlu
      ditingkatkan. Literasi  <?= $data_Siswa->nama ?> sudah sangat baik tinggal dipertahankan, membaca buku pengembangan
      mendapat skor tertinggi, sedangkan membaca buku pelajaran mendapat skor terendah selanjutnya perlu
      ditingkatkan. Muamalah  <?= $data_Siswa->nama ?> sudah sangat baik tinggal dipertahankan, membayar infaq mendapat skor
      tertinggi, sedangkan mengikuti kajian/seminar mendapat skor terendah selanjutnya perlu ditingkatkan.
    </p>
  </div>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 50%; vertical-align: top;">
        <table style="width: 100%;">
          <tr>
            <td>
              <p  class = "txt" style="margin: 0px!important; text-align: center;">Mengetahui,</p>
              <p class = "txt" style="margin: 0px!important; text-align: center;">Kepala Sekolah</p>
            </td>
          </tr>
          <tr>
            <td>
              <div style="height: 100px; border: 1px solid #fff;"></div>
              <div>
                <p class = "txt" style="margin: 0px!important; text-align: center;">Nama Kepala Sekolah</p>
                <p class = "txt" style="margin: 0px!important; text-align: center;">NIP Kepala Sekolah</p>
              </div>
            </td>
          </tr>
        </table>
      </td>
      <td style="width: 50%; vertical-align: top;">
        <table style="width: 100%;">
          <tr>
            <td>
              <p class = "txt" style="margin: 0px!important; text-align: center;">Menyetujui,</p>
              <p class = "txt" style="margin: 0px!important; text-align: center;">Wali Kelas</p>
            </td>
          </tr>
          <tr>
            <td>
              <div style="height: 100px; border: 1px solid #fff;"></div>
              <div>
                <p class = "txt" style="margin: 0px!important; text-align: center;">Nama Wali Kelas</p>
                <p class = "txt" style="margin: 0px!important; text-align: center;">NIP Wali Kelas</p>
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

</body>

</html>