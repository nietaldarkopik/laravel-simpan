<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\PengajuanModel;
use App\DataTables\TindakansDataTable;
use App\Models\PengajuanDokumenModel;
use App\Models\ProgressPengajuanModel;
use App\Models\SopModel;
use App\Models\SopStepModel;
use App\Models\SopDokumenModel;
use Illuminate\Support\Facades\Response;
use MatanYadaev\EloquentSpatial\Objects\Polygon;
use MatanYadaev\EloquentSpatial\Objects\LineString;
use MatanYadaev\EloquentSpatial\Objects\Point;
use MatanYadaev\EloquentSpatial\Enums\Srid;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Storage;
use DB;
use Auth;
use Str;
use PDF;

class TindakanController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware(['permission:role-list|role-create|role-edit|role-delete'], ['only' => ['index', 'store']]);
        //$this->middleware(['permission:role-create'], ['only' => ['create', 'store']]);
        //$this->middleware(['permission:role-edit'], ['only' => ['edit', 'update']]);
        //$this->middleware(['permission:role-delete'], ['only' => ['destroy']]);
        
        $this->middleware('auth');
    }

    public function index(TindakansDataTable $dataTable)
    {
        return $dataTable->render('vendor.adminlte.tindakans.index');
    }

    public function getData(Request $request)
    {
        $pengajuans = PengajuanModel::orderBy('id', 'DESC')->paginate(20);
        return view('vendor.adminlte.tindakans.index', compact('pengajuans'));
    }

    public function create(Request $request)
    {
		
    }

    public function store(Request $request)
    {
		
    }

    public function show($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.tindakans.form-show', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.tindakans.show', compact('pengajuan', 'sop'));
        }
    }

    public function print($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        
        if($request->ajax()){
            return view('vendor.adminlte.tindakans.form-print', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.tindakans.print', compact('pengajuan', 'sop'));
        }
    }
    

    public function edit($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.tindakans.form-edit', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.tindakans.edit', compact('pengajuan', 'sop'));
        }
    }

    public function update(Request $request, $id)
    {

    }

    public function updateStatus(Request $request, $pengajuan)
    {

        $this->validate($request, [
			'status' => 'required',
			'pengajuan_id' => 'required',
			'sop_step_id' => 'required',
			'unit_id' => 'required',
			//'user_id' => 'required',
        ]);
		
		$user_id = Auth::user()->id;

		$status = $request->input('status');
		$pengajuan_id = $request->input('pengajuan_id');
		$sop_step_id = $request->input('sop_step_id');
		$unit_id = $request->input('unit_id');

        $progress = ProgressPengajuanModel::where(function($query) use ($pengajuan_id,$pengajuan,$sop_step_id,$unit_id){
			$query->where('id_pengajuan',$pengajuan_id);
			$query->where('id_sop_step',$sop_step_id);
			$query->where('id_unit',$unit_id);
		})->get()->first();

		$progress->status = $status;
		$progress->updated_by = $user_id;
		$progress->updated_at = date("Y-m-d H:i:s");
        $progress->save();

        return Response::json(['data' => $pengajuan, 'message' => 'Data berhasil disimpan'],200);
    }

    public function stepDetail($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::where('id',$pengajuan->id_sop)->with('step')->get()->first();

        if($request->ajax()){
            return view('vendor.adminlte.tindakans.form-step-detail', ['pengajuan' => $pengajuan, 'sop' => $sop]);
        }else{
            return view('vendor.adminlte.tindakans.step-detail', ['pengajuan' => $pengajuan, 'sop' => $sop]);
        }
    }

    public function destroy(PengajuanModel $pengajuan, Request $request)
    {
        $pengajuan->delete();
        return redirect()->route('admin.pengajuan.index')
            ->with('success', 'Pengajuan telah dihapus');
    }
	
    public function getStepSop($sop_id,Request $request)
    {
		$stepSops = SopStepModel::with('unit')->where('sop_id','=',$sop_id)->orderBy('sort_order','asc')->get();
		$dokumenSops = SopDokumenModel::where('id_sop','=',$sop_id)->orderBy('id','desc')->get();

		return Response::json(['data' => ['step' => $stepSops,'dokumen' => $dokumenSops],'message' => 'ok']);
    }

	public function formMessage(PengajuanModel $pengajuan, Request $request)
	{
        if($request->ajax()){
            return view('vendor.adminlte.tindakans.form-message', compact('pengajuan'));
        }else{
            return view('vendor.adminlte.tindakans.message', compact('pengajuan'));
        }
	}

	public function postMessage(PengajuanModel $pengajuan, Request $request){

	}

}
