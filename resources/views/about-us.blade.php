<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&family=Inter:wght@100..900&family=Poppins:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
    <title>About Us Page</title>
    <style>
        html,
        body {
            padding: 0;
            margin: 0;
            height: 100%;
        }

        footer {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
        }

        ::-webkit-scrollbar {
            width: 0px;
            background: transparent;
        }
    </style>
</head>

<body>

    <div class="container-fluid">
        @include('layouts.navbar');

        <div class="col-12 justify-content-center p-3">
            <h1 class="text-center m-4" style="font-weight:bold; font-size:2rem">About EduFun</h1>
            <p class="text-center m-4" style="font-size:1.5rem">EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website.</p>
            <p class="text-center m-4" style="font-size:1.5rem">Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi Indonesia yang memahami ilmu pengetahuan dan cinta belajar</p>
        </div>
        @include('layouts.footer');
    </div>


    <!-- Bootstrap JS -->
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>