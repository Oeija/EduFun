<?php

use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PageController::class, 'indexPage'])->name('indexPage');
Route::get('/interactive-multimedia', [PageController::class, 'interactiveMultimediaPage'])->name('interactiveMultimediaPage');
Route::get('/software-engineering', [PageController::class, 'softwareEngineeringPage'])->name('softwareEngineeringPage');
Route::get('/courses/{course_id}', [PageController::class, 'courseDetail'])->name('courseDetail');
Route::get('/writer', [PageController::class, 'writerPage'])->name('writerPage');
Route::get('/about-us', [PageController::class, 'aboutUsPage'])->name('aboutUsPage');
