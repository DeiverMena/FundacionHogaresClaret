<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\ProyeccionComidaController;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';


Route::middleware('auth')->group(function(){

    //USERS 
Route::get('/users', [UserController::class, 'index'])->middleware('can:users.index')->name('users.index');

    //Editar usuarios
Route::get('/users/{user}', [UserController::class, 'edit'])->name('users.edit')->middleware('can:users.edit');
Route::put('users/{user}', [UserController::class, 'update'])->name('users.update')->middleware('can:users.edit');
    //Registro de usuarios
Route::get('user/create',[UserController::class, 'create'])->middleware('can:user.create')->name('users.create');
Route::post('user/store', [UserController::class, 'store'])->name('users.store')->middleware('can:user.create');

//Crud roles
//Route::resource('roles',RoleController::class)->names('roles');

 Route::get('roles', [RoleController::class,'index'])->name('roles.index')
        ->middleware('can:roles.index');

Route::post('roles/store', [RoleController::class,'store'])->name('roles.store')
        ->middleware('can:roles.create');

    Route::get('roles/create', [RoleController::class,'create'])->name('roles.create')
        ->middleware('can:roles.create');

    Route::put('roles/{role}', [RoleController::class,'update'])->name('roles.update')
        ->middleware('can:roles.edit');

    Route::get('roles/{role}', [RoleController::class,'show'])->name('roles.show')
        ->middleware('can:roles.show');

    Route::delete('roles/{role}', [RoleController::class,'destroy'])->name('roles.destroy')
        ->middleware('can:roles.destroy');

    Route::get('roles/{role}/edit', [RoleController::class,'edit'])->name('roles.edit')
        ->middleware('can:roles.edit');


        //Menus

        Route::get('menu', [MenuController::class,'index'])->name('menu.index');
       


            //Proyeccion comida

        Route::get('comida', [ProyeccionComidaController::class,'index'])->name('comida.index');

});
