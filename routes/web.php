<?php

use App\Livewire\Mau1;
use App\Livewire\Mau2;
use App\Livewire\Mau3;
use App\Livewire\Mau4;
use App\Livewire\Mau5;
use App\Livewire\Mau6;
use App\Livewire\Mau7;
use App\Livewire\Mau8;
use App\Livewire\Mau9;
use App\Livewire\Mau10;
use App\Livewire\Mau11;
use App\Livewire\Mau12;
use App\Livewire\Mau13;
use App\Livewire\Mau14;

use App\Livewire\Detail\ChiTietMau1;
use App\Livewire\Detail\ChiTietMau2;
use App\Livewire\Detail\ChiTietMau3;
use App\Livewire\Detail\ChiTietMau4;
use App\Livewire\Detail\ChiTietMau5;
use App\Livewire\Detail\ChiTietMau6;
use App\Livewire\Detail\ChiTietMau7;
use App\Livewire\Detail\ChiTietMau8;
use App\Livewire\Detail\ChiTietMau9;
use App\Livewire\Detail\ChiTietMau10;
use App\Livewire\Detail\ChiTietMau11;
use App\Livewire\Detail\ChiTietMau12;
use App\Livewire\Detail\ChiTietMau13;
use App\Livewire\Detail\ChiTietMau14;
use Illuminate\Support\Facades\Route;

// Route cho mau-1 đến mau-14
Route::get('/', Mau1::class);
Route::get('/mau-1', Mau1::class);
Route::get('/mau-2', Mau2::class);
Route::get('/mau-3', Mau3::class);
Route::get('/mau-4', Mau4::class);
Route::get('/mau-5', Mau5::class);
Route::get('/mau-6', Mau6::class);
Route::get('/mau-7', Mau7::class);
Route::get('/mau-8', Mau8::class);
Route::get('/mau-9', Mau9::class);
Route::get('/mau-10', Mau10::class);
Route::get('/mau-11', Mau11::class);
Route::get('/mau-12', Mau12::class);
Route::get('/mau-13', Mau13::class);
Route::get('/mau-14', Mau14::class);

Route::get('/1/{code}', ChiTietMau1::class);
Route::get('/2/{code}', ChiTietMau2::class);
Route::get('/3/{code}', ChiTietMau3::class);
Route::get('/4/{code}', ChiTietMau4::class);
Route::get('/5/{code}', ChiTietMau5::class);
Route::get('/6/{code}', ChiTietMau6::class);
Route::get('/7/{code}', ChiTietMau7::class);
Route::get('/8/{code}', ChiTietMau8::class);
Route::get('/u9/{code}', ChiTietMau9::class);
Route::get('/10/{code}', ChiTietMau10::class);
Route::get('/11/{code}', ChiTietMau11::class);
Route::get('/12/{code}', ChiTietMau12::class);
Route::get('/13/{code}', ChiTietMau13::class);
Route::get('/14/{code}', ChiTietMau14::class);