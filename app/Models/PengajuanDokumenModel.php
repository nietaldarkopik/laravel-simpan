<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PengajuanDokumenModel extends Model
{
    public $timestamps = true;
    use HasFactory;
    protected $table = 'pengajuan_dokumen'; // Nama tabel dalam database

    protected $fillable = [
        'id_pengajuan','nama','file','created_by','updated_by',
    ];

	public function pengajuan(){
		return $this->belongsTo(PengajuanModel::class,'id_pengajuan','id');
	}
}
