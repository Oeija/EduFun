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
    <title>Courses Page</title>
    <style>
        ::-webkit-scrollbar {
            width: 0px;
            background: transparent;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        @include('layouts.navbar');

        <div class="col-12 d-flex flex-column m-5">
            <h1 style="font-size:2rem; font-weight:bold">{{ $course->category->name }}</h1>
            <img src="{{ asset('images/' . $course->image) }}" class="img-fluid rounded-4 d-flex justify-content-center" style="height:500px; width:900px; object-fit:cover" alt="">
            <p style="font-size:1rem">{{ \Carbon\Carbon::parse($course->course_date)->format('d M Y') }} | by: {{ explode(' ', $course->writer->name)[0] }} </p>
            <div class="col-11">
                <p style="font-size:1.5rem">{{ $course->description }}</p>
            </div>
        </div>

        @include('layouts.footer');
    </div>
    <!-- Bootstrap JS -->
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>