<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('users', UserController::class)->only([
        'index', 'create', 'store', 'show', 'edit', 'update', 'destroy'
    ]);
});

// Rutas de autenticación generadas automáticamente por Laravel 8
Auth::routes();





