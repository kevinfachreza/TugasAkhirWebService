<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




Route::get('/', 'Dashboard\DashboardController@index');
Route::get('/dashboard', 'Dashboard\DashboardController@index');
Route::get('/dashboard/diagnosis/gejala', 'Dashboard\DashboardController@diagnosisgejala');
Route::get('/dashboard/dataset/nn', 'Dashboard\DashboardController@datasetNN');

Route::get('/diagnosis', 'Diagnosis\ViewController@index');
Route::get('/diagnosis/create', 'Diagnosis\ViewController@create');
Route::post('/diagnosis/create', 'Diagnosis\PostController@create');
Route::get('/diagnosis/{id}', 'Diagnosis\ViewController@single');
Route::post('/diagnosis/{id}', 'Diagnosis\PostController@edit');
Route::get('/diagnosis/{id}/delete', 'Diagnosis\PostController@delete');

Route::post('/diagnosis/gejala/{id}', 'Kasus\PostController@addGejala');
Route::get('/diagnosis/gejala/{id}/delete', 'Kasus\PostController@deleteGejala');

Route::get('/gejala', 'Gejala\ViewController@index');
Route::get('/gejala/new', 'Gejala\ViewController@create');
Route::get('/gejala/{id}', 'Gejala\ViewController@single');
Route::post('/gejala/new', 'Gejala\PostController@create');
Route::post('/gejala/{id}', 'Gejala\PostController@edit');
Route::post('/gejala/{id}/delete', 'Gejala\PostController@delete');

Route::get('/kasus','Kasus\ViewController@index');
Route::get('/kasus/new','Kasus\ViewController@create');
Route::get('/kasus/new/{id}','Kasus\PostController@create');
Route::get('/kasus/{id}','Kasus\ViewController@single');
Route::get('/kasus/{id}/delete','Kasus\PostController@delete');
Route::post('/kasus/edit/diagnosis','Kasus\PostController@editDiagnosis');
Route::post('/kasus/edit/sumber','Kasus\PostController@editSumber');