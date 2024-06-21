<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SopDokumenModel extends Model
{
    public $timestamps = true;
    use HasFactory;
    protected $table = 'sop_dokumens'; // Nama tabel dalam database

    protected $fillable = [
        'id_sop','judul','file','created_by','updated_by',
    ];

	public function sop(){
		return $this->belongsTo(SopModel::class,'sop_id','id');
	}
}
