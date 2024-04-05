<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penilaian Siswa</title>

    <!-- Tambahkan link ke Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <h2>Penilaian Siswa</h2>

    <!-- Tambahkan elemen canvas untuk chart -->
    <canvas id="nilaiChart" width="5" height="5"></canvas>

    <!-- Skrip untuk membuat chart -->
    <script>
        var ctx = document.getElementById('nilaiChart').getContext('2d');
        var chartData = <?= json_encode($chartData); ?>;

        var data = {
            labels: chartData.map(data => data.label),
            datasets: [{
                data: chartData.map(data => data.data),
                backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4CAF50', '#FF8C00'],
            }],
        };

        var myPieChart = new Chart(ctx, {
            type: 'pie',
            data: data,
        });
    </script>
</body>
</html>