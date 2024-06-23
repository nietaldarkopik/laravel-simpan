<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\SopModel;
use App\Models\UnitModel;
use App\DataTables\SopsDataTable;
use App\Models\SopDokumenModel;
use App\Models\SopStepModel;
use MatanYadaev\EloquentSpatial\Objects\Polygon;
use MatanYadaev\EloquentSpatial\Objects\LineString;
use MatanYadaev\EloquentSpatial\Objects\Point;
use MatanYadaev\EloquentSpatial\Enums\Srid;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Storage;
use DB;
use Auth;
use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Client\Response as ClientResponse;
use Illuminate\Support\Facades\Response as FacadesResponse;
use Str;
use PDF;

class SopController extends Controller
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

    public function index(SopsDataTable $dataTable)
    {
        return $dataTable->render('vendor.adminlte.sops.index-datatable');
    }

    public function getData(Request $request)
    {
        $sops = SopModel::orderBy('id', 'DESC')->paginate(20);
        return view('vendor.adminlte.sops.index', compact('sops'));
    }

    public function create(Request $request)
    {
        if($request->ajax()){
            return view('vendor.adminlte.sops.form-create');
        }else{
            return view('vendor.adminlte.sops.create');
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
			'kode' => 'required',
			'sop' => 'required',
			'prosedur' => 'required',
        ]);

        $user_id = Auth::user()->id;
        $dt = [
			'kode' => $request->input('kode'),
			'sop' => $request->input('sop'),
			'prosedur' => $request->input('prosedur'),
            'created_by' => $user_id,
            'updated_by' => $user_id,
            'created_at' => date("Y-m-d H:i:s"),
            'updated_at' => date("Y-m-d H:i:s"),
        ];

        $sop = SopModel::create($dt);

        return redirect()->route('admin.sop.index')
            ->with('success', 'SOP berhasil disimpan');
    }

    public function show($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-show', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.show', compact('sop'));
        }
    }

    
    public function peta($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-peta', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.peta', compact('sop'));
        }
    }
    
    public function psu($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-psu', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.psu', compact('sop'));
        }
    }
    
    public function print($id,Request $request)
    {
        $sop = SopModel::find($id);

        
        if($request->ajax()){
            return view('vendor.adminlte.sops.form-print', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.print', compact('sop'));
        }
    }
    
    public function document($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-document', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.document', compact('sop'));
        }
    }
    
    public function pdf($id,Request $request)
    {
        $sop = SopModel::find($id);

        $pdf = PDF::loadView('vendor.adminlte.sops.pdf', compact('sop'))->setOptions(['defaultFont' => 'sans-serif']);

        return $pdf->download(Str::kebab($sop->nama_percumahan).'.pdf');

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-print', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.print', compact('sop'));
        }
    }

    public function edit($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-edit', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.edit', compact('sop'));
        }
    }

    public function flowStep($id,Request $request)
    {
        $sop = SopModel::find($id);
		$units = UnitModel::orderBy('code','asc')->get();

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-flow-step', compact('sop','units'));
        }else{
            return view('vendor.adminlte.sops.flow-step', compact('sop','units'));
        }
    }
    
    public function editFlowStep($id,Request $request)
    {
        $sop = SopModel::find($id);
		$units = UnitModel::orderBy('code','asc')->get();

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-edit-flow-step', compact('sop','units'));
        }else{
            return view('vendor.adminlte.sops.edit-flow-step', compact('sop','units'));
        }
    }

    public function formUploadPeta($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-upload-peta', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.upload-peta', compact('sop'));
        }
    }

    public function formUploadDokumen($id,Request $request)
    {
        $sop = SopModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.sops.form-upload-dokumen', compact('sop'));
        }else{
            return view('vendor.adminlte.sops.upload-dokumen', compact('sop'));
        }
    }

    public function uploadDokumen($id,Request $request)
    {
        $this->validate($request, [
            'file' => 'file',//|mimes:doc,docx,xls,xlsx',
            'judul' => '',
        ]);

        $path = '';
        $uploadPath = '';
        
		$id_sop = $request->input("id_sop");
		$sop = SopModel::find($id_sop)->get()->first();

        if ($request->file('file')) {
            $file = $request->file('file');
            $extension = $file->getClientOriginalExtension();
            $name = $file->getClientOriginalName();
			$sop_name = Str::limit(Str::kebab($sop->sop),50,'');
            $uploadPath = 'public/uploads/sop'; //.'/'.$name.'.'.$extension;
            $path = $file->storeAs($uploadPath, $sop->kode.'-'.$sop_name.'-'.date("YmdHis").'.'.$extension);
        }
        
        $dt = [
            'file' => basename($path),
            'id_sop' => $id,
            'judul' => basename($path),
            'created_by' => Auth::user()->id,
            'updated_by' => Auth::user()->id,
        ];

        $dokumen = SopDokumenModel::create($dt);

        return $dokumen->toJson(); //[Storage::url($opath),$outputPath,$artistanO];
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
			'kode' => 'required',
			'sop' => 'required',
			'prosedur' => '',
        ]);

        $user_id = Auth::user()->id;

        $sop = SopModel::find($id);
		$sop->kode = $request->input('kode');
		$sop->sop = $request->input('sop');
		$sop->prosedur = $request->input('prosedur');
        $sop->updated_by = $user_id;
        $sop->updated_at = date("Y-m-d H:i:s");

        $sop->save();


        return redirect()->route('admin.sop.index')
            ->with('success', 'SOP berhasil diubah');
    }

    public function updateStep(Request $request, $sop_id)
    {

		$sop = SopModel::find($sop_id)->get()->first();

        $this->validate($request, [
			'id' => 'required',
			'unit_id' => 'required',
			'keterangan' => '',
        ]);

		$id = $request->input("id");
		$unit_id = $request->input("unit_id");
		$keterangan = $request->input("keterangan");
		//$sop_id = $request->input("sop_id");
		//$sort_order = $request->input("sort_order");

		$step_updated = [];
		$deleteStep = [];

		if(!empty($id) and is_array($id) and count($id) > 0)
		{
			foreach($id as $i =>$d)
			{
				$data = [
					'sop_id' => $sop_id,
					'unit_id' => (isset($unit_id[$i]))?$unit_id[$i]:'',
					'sort_order' => $i,
					'keterangan' => (isset($keterangan[$i]))?$keterangan[$i]:'',
				];

				$doupdate = SopStepModel::updateOrCreate(['id' => $d],$data);
				if($doupdate){
					$step_updated[] = $doupdate;
					$deleteStep[] = $doupdate->id;
				}
			}
		}

		if(is_array($deleteStep) and count($deleteStep) > 0)
		{
			SopStepModel::where(function($query) use ($sop_id,$deleteStep){
				$query->whereNotIn('id',$deleteStep);
				$query->where('sop_id',$sop_id);
			})->where('sop_id','=',$sop_id)->delete();
		}

		if(count($step_updated) > 0)
		{
			return FacadesResponse::json(['data' => $step_updated, 'message' => 'Data berhasil disimpan'],200);
		}else{
			return FacadesResponse::json(['data' => $step_updated, 'message' => 'Data gagal disimpan'],404);
		}
    }

    public function destroy(SopModel $sop, Request $request)
    {
        $sop->delete();
        return redirect()->route('admin.sop.index')
            ->with('success', 'SOP telah dihapus');
    }

	public function checkKode($kode = "", $id = "", Request $request){
		$check = SopModel::where(function($query) use ($kode,$id){
			if(!empty($kode))
			{
				$query->where('kode',$kode);
			}
			if(!empty($id))
			{
				$query->where('id','!=',$id);
			}
		})->get();

		if($check->count() > 0)
		{
			return FacadesResponse::json(['data' => $check, 'message' => 'Kode sudah tersedia silahkan masukan kode yang lain'],404);
		}else{
			return FacadesResponse::json(['data' => $check, 'message' => 'Kode bisa digunakan'],200);
		}
	}
}
