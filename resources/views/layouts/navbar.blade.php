<nav class="navbar navbar-expand-lg bg-white mb-0">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="{{ asset('images/edufunlogo.png') }}" alt="Logo" style="height: 80px;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item me-5">
                    <a class="nav-link" aria-current="page" href="{{ route('indexPage') }}">Home</a>
                </li>
                <li class="nav-item dropdown me-5">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('interactiveMultimediaPage') }}">Interactive Multimedia</a></li>
                        <li><a class="dropdown-item" href="{{ route('softwareEngineeringPage') }}">Software Engineering</a></li>
                    </ul>
                </li>
                <li class="nav-item me-5">
                    <a class="nav-link" href="{{ route('writerPage') }}">Writers</a>
                </li>
                <li class="nav-item me-5">
                    <a class="nav-link" href="{{ route('aboutUsPage') }}">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/popular">Popular</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Custom CSS -->
<style>
    .navbar .nav-link {
        font-family: 'Poppins', sans-serif;
        font-weight: 600;
        font-size: larger;
        color: black;
    }

    .navbar .nav-link:hover {
        color: lightsteelblue;
    }

    .navbar .nav-link:active {
        color: lightsteelblue;
        text-decoration: underline;
    }
</style>