<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PengajuanModel extends Model
{
    use SoftDeletes;

    public $timestamps = true;
    use HasFactory;
    protected $table = 'pengajuan'; // Nama tabel dalam database

    protected $fillable = [
        'judul','id_sop','id_user','id_unit','dokumen','tgl_pengajuan','status','keterangan',
    ];
    
    protected $dates = ['deleted_at'];

}
