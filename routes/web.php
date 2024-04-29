<?php

use App\Http\Controllers\EventController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\http\Controllers\FormController;
use App\Http\Controllers\ParentController;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/partio', function () {
    return view('partio');
})->middleware('role:scout');

Route::view('/omasivu', 'omasivu')->name('omasivu');
Route::view('/kalenteri', 'kalenteri')->name('kalenteri');
Route::view('/lippukunta', 'lippukunta')->name('lippukunta');
Route::view('/tapahtumat', 'tapahtumat')->name('tapahtumat');
Route::view('/partio', 'partio')->name('partio');

Route::get('/events/create', [EventController::class, 'create'])->name('events.create');  //tapahtuma routet
Route::post('/events', [EventController::class, 'store'])->name('events.store');

Route::get('/tapahtumat', [EventController::class, 'index'])->name('tapahtumat');

Route::delete('/events/{event}', [EventController::class, 'destroy'])->name('events.destroy');

//Route::get('/events/register', [App\Http\Controllers\EventController::class, 'registerForm'])->name('events.register');
Route::post('/events/register', [App\Http\Controllers\EventController::class, 'registerSubmit'])->name('events.register.submit');
Route::get('/events', [App\Http\Controllers\EventController::class, 'index'])->name('events.index');
Route::get('events/register', [EventController::class, 'registerForm'])->name('events.register');
Route::post('/events/register', [EventController::class, 'registerSubmit'])->name('events.register.submit');

// Hakee tapahtumat omasivulle...
Route::get('/omasivu', [EventController::class, 'retrieveList'])->name('omasivu');

Route::post('/register/parent', [ParentController::class, 'register'])->name('register.parent');
// routes/web.php

Route::get('/parent_register', function () {
    return view('parent_register');
})->name('parent_register');


require __DIR__.'/auth.php';
