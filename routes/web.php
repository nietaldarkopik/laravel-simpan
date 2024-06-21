<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\Admin\HalamanController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\PengajuanController;
use App\Http\Controllers\Admin\LaporanController;
use App\Http\Controllers\Admin\SopController;
use App\Http\Controllers\Admin\UnitController;
use App\Http\Controllers\Admin\RiwayatController;
use App\Http\Controllers\Admin\RolesController;
use App\Http\Controllers\Admin\ServicesController;
use App\Http\Controllers\Admin\UsersController;
use App\Http\Controllers\Admin\UbahPasswordController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\HomeController::class,'index']);

Auth::routes();

#Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::prefix('admin')->name('admin.')->group(function(){
    Route::resource('halaman',HalamanController::class);
    Route::resource('menu',MenuController::class);
    Route::resource('faq',FaqController::class);
    Route::resource('pengajuan',PengajuanController::class);
    Route::resource('laporan',LaporanController::class);
    Route::resource('sop',SopController::class);
    Route::resource('unit',UnitController::class);
    Route::post('unit/update-sort',[UnitController::class,'updateSort'])->name('unit.updateSort');
    Route::resource('riwayat',RiwayatController::class);
    Route::get('pengajuan/{pengajuan}/document',[PengajuanController::class,'document'])->name('pengajuan.document');
    Route::get('pengajuan/{pengajuan}/step',[PengajuanController::class,'step'])->name('pengajuan.step');
    Route::get('pengajuan/{pengajuan}/print',[PengajuanController::class,'print'])->name('pengajuan.print');
    Route::get('pengajuan/{pengajuan}/pdf',[PengajuanController::class,'pdf'])->name('pengajuan.pdf');
    Route::get('pengajuan/{pengajuan}/step-detail',[PengajuanController::class,'stepDetail'])->name('pengajuan.stepDetail');
    Route::get('pengajuan/{pengajuan}/form-upload-dokumen',[PengajuanController::class,'formUploadDokumen'])->name('pengajuan.formUploadDokumen');
    Route::post('pengajuan/{pengajuan}/upload-dokumen',[PengajuanController::class,'uploadDokumen'])->name('pengajuan.uploadDokumen');
    Route::get('pengajuan/{sop_id}/get-step-sop',[PengajuanController::class,'getStepSop'])->name('pengajuan.getStepSop');
    Route::resource('roles',RolesController::class);
    Route::resource('users',UsersController::class);
    Route::resource('ubah-password',UbahPasswordController::class);
    Route::get('sop/{sop}/form-upload-dokumen',[SopController::class,'formUploadDokumen'])->name('sop.formUploadDokumen');
    Route::post('sop/{sop}/upload-dokumen',[SopController::class, 'uploadDokumen'])->name('sop.uploadDokumen');
    Route::get('sop/check-kode/{kode?}/{id?}',[SopController::class, 'checkKode'])->name('sop.checkKode');
    Route::get('sop/edit-flow-step/{id?}',[SopController::class, 'editFlowStep'])->name('sop.editFlowStep');
    Route::get('sop/flow-step/{id?}',[SopController::class, 'flowStep'])->name('sop.flowStep');
    Route::patch('sop/update-step/{sop_id?}',[SopController::class, 'updateStep'])->name('sop.updateStep');
})->middleware('auth');

Route::get('/home', function() {
    return view('home');
})->name('home')->middleware('auth');
