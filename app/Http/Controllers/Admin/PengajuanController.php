<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\PengajuanModel;
use App\DataTables\PengajuansDataTable;
use App\Models\PengajuanDokumenModel;
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

class PengajuanController extends Controller
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

    public function index(PengajuansDataTable $dataTable)
    {
        return $dataTable->render('vendor.adminlte.pengajuans.index');
    }

    public function getData(Request $request)
    {
        $pengajuans = PengajuanModel::orderBy('id', 'DESC')->paginate(20);
        return view('vendor.adminlte.pengajuans.index', compact('pengajuans'));
    }

    public function create(Request $request)
    {
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-create', compact('sop'));
        }else{
            return view('vendor.adminlte.pengajuans.create', compact('sop'));
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
			'id_parent',
			'id_sop',
			'id_user',
			'id_unit',
			'judul' => 'required',
			'nominal' => 'required',
			'tgl_pengajuan' => '',
			'keterangan' => '',
			'status' => 'required',
			'created_by',
			'updated_by'
        ]);

		$user_id = Auth::user()->id;
        $dt = [
			'id_parent' => 0,
			'id_sop' => $request->input('id_sop'),
			'id_user' => $user_id,
			'id_unit' => $request->input('id_unit'),
			'judul' => $request->input('judul'),
			'nominal' => $request->input('nominal'),
			'tgl_pengajuan' => $request->input('tgl_pengajuan') ?? date("Y-m-d H:i:s"),
			'keterangan' => $request->input('keterangan'),
			'status' => $request->input('status'),
			'created_by' => $user_id,
			'updated_by' => null,
            'created_at' => date("Y-m-d H:i:s"),
        ];

        $pengajuan = PengajuanModel::create($dt);

		if($request->input('status') == 'diajukan')
		{
			SopStepModel::generateProgress($pengajuan);
		}

		if($pengajuan)
		{
			return Response::json(['data' => $pengajuan,'message' => 'Data berhasil disimpan'],200);
		}else{
			return Response::json(['data' => [],'message' => 'Data gagal disimpan'],444);
		}
    }

    public function show($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-show', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.show', compact('pengajuan', 'sop'));
        }
    }

    
    public function peta($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-peta', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.peta', compact('pengajuan', 'sop'));
        }
    }
    
    public function psu($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::with('step')->get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-psu', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.psu', compact('pengajuan', 'sop'));
        }
    }
    
    public function print($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        
        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-print', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.print', compact('pengajuan', 'sop'));
        }
    }
    
    public function document($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-document', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.document', compact('pengajuan', 'sop'));
        }
    }
    
    public function pdf($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        $pdf = PDF::loadView('vendor.adminlte.pengajuans.pdf', compact('pengajuan', 'sop'))->setOptions(['defaultFont' => 'sans-serif']);

        return $pdf->download(Str::kebab($pengajuan->nama_percumahan).'.pdf');

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-print', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.print', compact('pengajuan', 'sop'));
        }
    }

    public function edit($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-edit', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.edit', compact('pengajuan', 'sop'));
        }
    }

    public function stepDetail($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::where('id',$pengajuan->id_sop)->with('step')->get()->first();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-step-detail', ['pengajuan' => $pengajuan, 'sop' => $sop]);
        }else{
            return view('vendor.adminlte.pengajuans.step-detail', ['pengajuan' => $pengajuan, 'sop' => $sop]);
        }
    }
    
    public function formUploadPeta($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-upload-peta', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.upload-peta', compact('pengajuan', 'sop'));
        }
    }

    public function formUploadDokumen($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);
        $sop = SopModel::get();

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-upload-dokumen', compact('pengajuan', 'sop'));
        }else{
            return view('vendor.adminlte.pengajuans.upload-dokumen', compact('pengajuan', 'sop'));
        }
    }

    public function saveGeojson($id,Request $request)
    {
        $this->validate($request, [
            'geometry_file' => 'required', //|mimes:zip,sbx,shp,shp.xml,shx,cpg,dbf,prj,sbn,geojson,json',
        ]);
        
        $user_id = Auth::user()->id;

        $geojson = json_decode(file_get_contents($request->input('geometry_file')),true);

        $pengajuan = PengajuanModel::find($id);
        $pengajuan->user_id_update = $user_id;
        $pengajuan->geometry_file =$request->input('geometry_file');
        $pengajuan->geometry = $geojson;
        $pengajuan->save();

        return $pengajuan->toJson();
    }

    public function uploadPeta($id,Request $request)
    {
        $this->validate($request, [
            'file' => 'file', //|mimes:zip,sbx,shp,shp.xml,shx,cpg,dbf,prj,sbn,geojson,json',
        ]);

        $path = '';
        $uploadPath = '';
        
        if ($request->file('file')) {
            $file = $request->file('file');
            $extension = $file->getClientOriginalExtension();
            $name = $file->getClientOriginalName();
            $uploadPath = 'public/uploads/pengajuan/peta/'.$id ; //.'/'.$name.'.'.$extension;
            //$path = $file->storeAs($uploadPath, 'public');
            $path = $file->storeAs($uploadPath, $file->getClientOriginalName());
            return $path;
            //$file_bast = $file->getClientOriginalName();
            //$file_bast = basename($path);
        }
        
        $pengajuan = PengajuanModel::find($id);

        $opath = 'uploads/pengajuan/peta/'.$id.'/geojson/'.$id.'.geojson';
        $inputPath = storage_path($path);
        $outputPath = storage_path($opath);

        // Jalankan command Artisan untuk konversi
        /* $artistanO = Artisan::call('convert:shapefile', [
            'input' => $inputPath,
            'output' => $outputPath
        ]); */

        return asset(Storage::url($opath)); //[Storage::url($opath),$outputPath,$artistanO];
    }

    public function uploadDokumen($id,Request $request)
    {
        $this->validate($request, [
            'file' => 'file|mimes:zip,jpg,jpeg,png,doc,docx,xls,xlxs,pdf',
            'id_pengajuan' => 'required',
        ]);

        $path = '';
        $uploadPath = '';
        
        if ($request->file('file')) {
            $file = $request->file('file');
            $extension = $file->getClientOriginalExtension();
            $name = $file->getClientOriginalName();
            $uploadPath = 'uploads/pengajuan/dokumen/'.$id ; //.'/'.$name.'.'.$extension;
            $path = $file->store($uploadPath, 'public');
        }
        
		$user_id = Auth::user()->id;

        $dt = [
			'id_pengajuan' => $id,
			'nama' => basename($path),
			'file' => $path,
			'created_at' => date("Y-m-d H:i:s"),
			'created_by' => $user_id
        ];

        $dokumen = PengajuanDokumenModel::create($dt);

        return $dokumen->toJson(); //[Storage::url($opath),$outputPath,$artistanO];
    }

    public function generateShp($id,Request $request){
        $files = $request->input('files');

        $shp = false;
        $shx = false;
        $geojson = false;

        if(!empty($files) and is_array($files) and count($files) > 0)
        {
            foreach($files as $i => $f)
            {
                $f_arr = explode(".",$f);
                $ext = $f_arr[count($f_arr) - 1];
                if($ext == 'shp'){
                    $shp = $f;
                }
                if($ext == 'shx'){
                    $shx = $f;
                }
            }
        }

        //exec("C:/OSGeo4W/bin/ogr2ogr.exe -f GeoJSON C:\wamp\www\si-psu-new\storage\public/uploads/pengajuan/peta/6/6.geojson C:\wamp\www\si-psu-new\storage\public/uploads/pengajuan/peta/6/Pondok_Indah_V.shp",$output,$result_code);
        //dd($output,$result_code);

        if($shp && $shx)
        {
            $uploadPath = 'app/public/uploads/pengajuan/peta/'.$id.'/'.$shp;
            Artisan::call('convert:shapefile', [
                'input' => storage_path($uploadPath),
                'output' => storage_path('app/public/uploads/pengajuan/peta/'.$id.'/'.$id.'.geojson')
            ]);

            return asset(Storage::url('public/uploads/pengajuan/peta/'.$id.'/'.$id.'.geojson'));

        }else{
            return [$shp,$shx];
        }

    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
			'id_parent',
			'id_sop',
			'id_user',
			'id_unit',
			'judul' => 'required',
			'nominal' => 'required',
			'tgl_pengajuan' => '',
			'keterangan' => '',
			'status' => 'required',
			'created_by',
			'updated_by'
        ]);
		
		$user_id = Auth::user()->id;

        $pengajuan = PengajuanModel::find($id);

		$pengajuan->id_parent = 0;
		$pengajuan->id_sop = $request->input('id_sop');
		$pengajuan->id_user = $user_id;
		$pengajuan->id_unit = $request->input('id_unit');
		$pengajuan->judul = $request->input('judul');
		$pengajuan->nominal = $request->input('nominal');
		$pengajuan->tgl_pengajuan = $request->input('tgl_pengajuan') ?? date("Y-m-d H:i:s");
		$pengajuan->keterangan = $request->input('keterangan');
		$pengajuan->status = $request->input('status');
		$pengajuan->updated_by = $user_id;
		$pengajuan->updated_at = date("Y-m-d H:i:s");

        $pengajuan->save();

		if($request->input('status') == 'diajukan')
		{
			SopStepModel::generateProgress($pengajuan);
		}

        return Response::json(['data' => $pengajuan, 'message' => 'Data berhasil disimpan'],200);
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
            return view('vendor.adminlte.pengajuans.form-message', compact('pengajuan'));
        }else{
            return view('vendor.adminlte.pengajuans.message', compact('pengajuan'));
        }
	}

	public function postMessage(PengajuanModel $pengajuan, Request $request){

	}

}
