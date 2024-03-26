<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

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

Route::view('/juhosivu', 'juhosivu')->name('juhosivu');
Route::view('/kalenteri', 'kalenteri')->name('kalenteri');
Route::view('/lippukunta', 'lippukunta')->name('lippukunta');
Route::view('/tapahtumat', 'tapahtumat')->name('tapahtumat');
Route::view('/partio', 'partio')->name('partio');


require __DIR__.'/auth.php';
