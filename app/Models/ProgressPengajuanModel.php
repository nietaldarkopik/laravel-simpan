<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgressPengajuanModel extends Model
{
    public $timestamps = true;
    use HasFactory;
    protected $table = 'pengajuan_progress'; // Nama tabel dalam database

    protected $fillable = [
        "id_pengajuan","id_sop","id_sop_step","id_unit","id_user","status"
    ];
}
