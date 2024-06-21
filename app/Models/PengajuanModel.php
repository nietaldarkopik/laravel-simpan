<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\App;

class PengajuanModel extends Model
{
    use SoftDeletes;

    public $timestamps = true;
    use HasFactory;
    protected $table = 'pengajuan'; // Nama tabel dalam database

    protected $fillable = [
        'id_parent','id_sop','id_user','id_unit','judul','nominal','tgl_pengajuan','keterangan','status','created_by','updated_by','deleted_by','created_at','updated_at','deleted_at'
    ];
    
    protected $dates = ['deleted_at'];

	public function unit(){
		return $this->belongsTo(UnitModel::class,'id_unit');
	}

	public function sop(){
		return $this->belongsTo(SopModel::class,'id_sop');
	}

	public function createdBy(){
		return $this->belongsTo(\App\Models\User::class,'id_user');
	}

	public function editedBy(){
		return $this->belongsTo(\App\Models\User::class,'updated_by');
	}
}
