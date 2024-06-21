<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SopModel extends Model
{
    use SoftDeletes;

    public $timestamps = false;
    use HasFactory;
    protected $table = 'sops'; // Nama tabel dalam database

    protected $fillable = [
        'kode','sop','prosedur','created_by','updated_by','created_at','updated_at',
    ];
    
    protected $dates = ['deleted_at'];

	public function step(){
		return $this->hasMany(SopStepModel::class,'sop_id','id');
	}
}
