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
    <title>Home Page</title>
    <style>
        ::-webkit-scrollbar {
            width: 0px;
            background: transparent;
        }
    </style>
    @php
    use Illuminate\Support\Str;
    @endphp
</head>

<body>
    <div class="container-fluid p-0">
        @include('layouts.navbar');

        <div class="row mt-0">
            <img src="{{ asset('images/landingstudy.jpg') }}" alt="" style="width: 100%; height: 500px; object-fit:cover">
        </div>

        @foreach($courses as $c)
        <div class="row my-5 ms-5 me-4">
            <div class="col-4 d-flex justify-content-center">
                <img src="{{ asset('images/' . $c->image) }}" class="img-fluid rounded-4" style="height:300px; width:600px; object-fit:cover" alt="">
            </div>
            <div class="col-8 d-flex flex-column">
                <h1 style="font-size:2rem; font-weight:bold">{{ $c->name }}</h1>
                <p style="font-size:1rem">{{ \Carbon\Carbon::parse($c->course_date)->format('d M Y') }} | by: {{ explode(' ', $c->writer->name)[0] }} </p>
                <p style="font-size:1.5rem">{{ Str::words($c->description, 20) }}</p>
                <div class="d-flex justify-content-end mt-4">
                    <a href="{{ route('courseDetail', ['course_id'=>$c->id]) }}" class="btn btn-dark fs-5 px-5 py-2 rounded-pill" style="font-weight:600">read more...</a>
                </div>
            </div>
        </div>
        @endforeach

        @include('layouts.footer')
    </div>
    <!-- Bootstrap JS -->
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>