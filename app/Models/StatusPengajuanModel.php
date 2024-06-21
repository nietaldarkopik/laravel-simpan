<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatusPengajuanModel extends Model
{
    public $timestamps = true;
    use HasFactory;
    protected $table = 'status_pengajuan'; // Nama tabel dalam database

    protected $fillable = [
        "kode","judul","warna_bg","warna_text","grup"
    ];
}
