<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function indexPage()
    {
        $courses = Course::with('category', 'writer')->get();

        return view('index')->with('courses', $courses);
    }

    public function interactiveMultimediaPage()
    {
        return view('interactive-multimedia');
    }

    public function softwareEngineeringPage()
    {
        return view('software-engineering');
    }

    public function courseDetail($course_id)
    {
        $course = Course::with('category', 'writer')->where('id', 'LIKE', $course_id)->first();

        return view('course-detail', compact('course'));
    }

    public function writerPage()
    {
        $writers = Course::with('category', 'writer')->get();

        return view('writer')->with('writers', $writers);
    }

    public function aboutUsPage()
    {
        return view('about-us');
    }
}
