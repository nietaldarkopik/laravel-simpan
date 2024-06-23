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

	public static function generateProgress(PengajuanModel $pengajuan){

		$id_sop = $pengajuan->id_sop;
		$sop = SopStepModel::where('sop_id',$id_sop)->get();

		foreach($sop as $i => $s)
		{
			if($s->sort_order == 0)
			{
				$status = StatusPengajuanModel::where('kode',$pengajuan->status)->get()->first();
				$progress = ProgressPengajuanModel::updateOrCreate(
					["id_pengajuan" => $pengajuan->id, "id_sop" => $pengajuan->id_sop, "id_sop_step" => $s->id],
					["id_unit" => $pengajuan->id_unit,"id_user" => $pengajuan->id_user,"status" => $status->kode]
				);
				continue;
			}
			
			$status = StatusPengajuanModel::where('kode',"Menunggu Persetujuan")->get()->first();
			$user_unit = UserUnitModel::where(function($query) use ($s){
				$query->where('id_unit',$s->unit_id);
			})->get();

			if($user_unit->count() > 0){
				foreach($user_unit as $i => $uu)
				{
					ProgressPengajuanModel::updateOrCreate(
						["id_pengajuan" => $pengajuan->id, "id_sop" => $pengajuan->id_sop, "id_sop_step" => $s->id],
						["id_unit" => $uu['id_unit'],"id_user" => $uu['id_user'],"status" => $status->kode]
					);
				}
			}else{
				ProgressPengajuanModel::updateOrCreate(
					["id_pengajuan" => $pengajuan->id, "id_sop" => $pengajuan->id_sop, "id_sop_step" => $s->id],
					["id_unit" => 0 ,"id_user" => 0,"status" => $status->kode]
				);

			}
		}
	}
}
