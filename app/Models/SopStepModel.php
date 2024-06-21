<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\SopModel;

class SopStepModel extends Model
{
	use HasFactory;

    public $timestamps = false;
    protected $table = 'sop_steps'; // Nama tabel dalam database

    protected $fillable = [
        'sop_id','unit_id','sort_order','keterangan',
    ];
 
	public function unit(){
		return $this->belongsTo(UnitModel::class,'unit_id','id');
	}
}
