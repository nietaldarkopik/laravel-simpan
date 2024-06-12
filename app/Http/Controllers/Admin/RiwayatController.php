<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\PengajuanModel;
use App\DataTables\PengajuansDataTable;
use App\Models\PengajuanDokumenModel;
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

class RiwayatController extends Controller
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

    public function indexxx(Request $request)
    {
        $pengajuans = PengajuanModel::orderBy('id', 'DESC')->paginate(20);
        return view('vendor.adminlte.pengajuans.index', compact('pengajuans'));
    }

    public function getData(Request $request)
    {
        $pengajuans = PengajuanModel::orderBy('id', 'DESC')->paginate(20);
        return view('vendor.adminlte.pengajuans.index', compact('pengajuans'));
    }

    public function create(Request $request)
    {
        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-create', compact('kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.create', compact('kategoriPsus'));
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            //'provinsi_id' => 'required',
            'kabkota_id' => 'required',
            'kecamatan_id' => 'required',
            'kelurahan_id' => 'required',
            //'pengembang_id' => 'required',
            'nama_pengajuan' => 'required',
            'luas' => '',
            'tahun_siteplan' => '',
            'latitude' => '',
            'longitude' => '',
            //'latlong' => '',
            'total_unit' => '',
            'jumlah_mbr' => '',
            'jumlah_nonmbr' => '',
            'no_bast' => '',
            'file_bast' => 'file|mimes:jpg,jpeg,png,pdf',
            'photo' => 'file|mimes:jpg,jpeg,png',
            'siteplan' => 'file|mimes:jpg,jpeg,png',
            'alamat' => 'required',
            'status_data' => 'required',
            'nama_pengembang' => 'required',
            'telepon_pengembang' => '',
            'email_pengembang' => '',
            'jumlah_proses' => '',
            'jumlah_ditempati' => '',
            'jumlah_kosong' => '',
            //'user_id_create' => 'required',
            //'user_id_update' => 'required',
            //'created_at' => 'required',
            //'updated_at' => 'required',
        ]);

        $file_bast = '';
        $photo = '';
        $siteplan = '';
        
        if ($request->file('file_bast')) {
            $file = $request->file('file_bast');
            $path = $file->store('uploads/pengajuan/file_bast', 'public');
            //$file_bast = $file->getClientOriginalName();
            //$file_bast = basename($path);
            $file_bast = $path;
        }
        
        if ($request->file('photo')) {
            $file = $request->file('photo');
            $path = $file->store('uploads/pengajuan/photo', 'public');
            //$photo = $file->getClientOriginalName();
            //$photo = basename($path);
            $photo = $path;
        }
        
        if ($request->file('siteplan')) {
            $file = $request->file('siteplan');
            $path = $file->store('uploads/pengajuan/siteplan', 'public');
            //$siteplan = $file->getClientOriginalName();
            //$siteplan = basename($path);
            $siteplan = $path;
        }
        

        //$fileModel = new File;
        //$fileModel->name = $file->getClientOriginalName();
        //$fileModel->path = $path;
        //$fileModel->save();

        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $latlong = (empty($latitude.$longitude))?null:new Point($latitude,$longitude, Srid::WGS84->value);

        $user_id = Auth::user()->id;
        $dt = [
            'provinsi_id' => 63,
            'kabkota_id' => $request->input('kabkota_id'),
            'kecamatan_id' => $request->input('kecamatan_id'),
            'kelurahan_id' => $request->input('kelurahan_id'),
            //'pengembang_id' => $request->input('pengembang_id'),
            'nama_pengajuan' => $request->input('nama_pengajuan'),
            'luas' => $request->input('luas'),
            'tahun_siteplan' => $request->input('tahun_siteplan'),
            'latitude' => $request->input('latitude'),
            'longitude' => $request->input('longitude'),
            'latlong' => $latlong,
            'total_unit' => $request->input('total_unit'),
            'jumlah_mbr' => $request->input('jumlah_mbr'),
            'jumlah_nonmbr' => $request->input('jumlah_nonmbr'),
            'no_bast' => $request->input('no_bast'),
            //'file_bast' => $request->input('file_bast'),
            //'photo' => $request->input('photo'),
            //'siteplan' => $request->input('siteplan'),
            'alamat' => $request->input('alamat'),
            'status_data' => $request->input('status_data'),
            'nama_pengembang' => $request->input('nama_pengembang'),
            'telepon_pengembang' => $request->input('telepon_pengembang'),
            'email_pengembang' => $request->input('email_pengembang'),
            'jumlah_proses' => $request->input('jumlah_proses'),
            'jumlah_ditempati' => $request->input('jumlah_ditempati'),
            'jumlah_kosong' => $request->input('jumlah_kosong'),
            'user_id_create' => $user_id,
            'user_id_update' => $user_id,
            'created_at' => date("Y-m-d H:i:s"),
            'updated_at' => date("Y-m-d H:i:s"),
        ];

        if(!empty($file_bast))
        {
            $dt['file_bast'] = $file_bast;
        }
        if(!empty($photo))
        {
            $dt['photo'] = $photo;
        }
        if(!empty($siteplan))
        {
            $dt['siteplan'] = $siteplan;
        }

        $pengajuan = PengajuanModel::create($dt);

        return redirect()->route('admin.pengajuan.index')
            ->with('success', 'Pengajuan berhasil disimpan');
    }

    public function show($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-show', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.show', compact('pengajuan', 'kategoriPsus'));
        }
    }

    
    public function peta($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-peta', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.peta', compact('pengajuan', 'kategoriPsus'));
        }
    }
    
    public function psu($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-psu', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.psu', compact('pengajuan', 'kategoriPsus'));
        }
    }
    
    public function print($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        
        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-print', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.print', compact('pengajuan', 'kategoriPsus'));
        }
    }
    
    public function document($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-document', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.document', compact('pengajuan', 'kategoriPsus'));
        }
    }
    
    public function pdf($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        $pdf = PDF::loadView('vendor.adminlte.pengajuans.pdf', compact('pengajuan', 'kategoriPsus'))->setOptions(['defaultFont' => 'sans-serif']);

        return $pdf->download(Str::kebab($pengajuan->nama_percumahan).'.pdf');

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-print', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.print', compact('pengajuan', 'kategoriPsus'));
        }
    }

    public function edit($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-edit', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.edit', compact('pengajuan', 'kategoriPsus'));
        }
    }

    public function psuDetail($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-psu-detail', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.psu-detail', compact('pengajuan', 'kategoriPsus'));
        }
    }
    
    public function formUploadPeta($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-upload-peta', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.upload-peta', compact('pengajuan', 'kategoriPsus'));
        }
    }

    public function formUploadDokumen($id,Request $request)
    {
        $pengajuan = PengajuanModel::find($id);

        if($request->ajax()){
            return view('vendor.adminlte.pengajuans.form-upload-dokumen', compact('pengajuan', 'kategoriPsus'));
        }else{
            return view('vendor.adminlte.pengajuans.upload-dokumen', compact('pengajuan', 'kategoriPsus'));
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
            'nama_file' => '',
            'judul_file' => '',
        ]);

        $path = '';
        $uploadPath = '';
        
        if ($request->file('file')) {
            $file = $request->file('file');
            $extension = $file->getClientOriginalExtension();
            $name = $file->getClientOriginalName();
            $uploadPath = 'public/uploads/pengajuan/dokumen/'.$id ; //.'/'.$name.'.'.$extension;
            $path = $file->storeAs($uploadPath, $file->getClientOriginalName());
        }
        
        $dt = [
            'nama_file' => $path,
            'id_pengajuan' => $id,
            'judul_file' => basename($path),
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
            #'provinsi_id' => 'required',
            'kabkota_id' => 'required',
            'kecamatan_id' => 'required',
            'kelurahan_id' => 'required',
            //'pengembang_id' => '',
            'nama_pengajuan' => 'required',
            'luas' => '',
            'tahun_siteplan' => '',
            'latitude' => '',
            'longitude' => '',
            //'latlong' => 'required',
            'total_unit' => '',
            'jumlah_mbr' => '',
            'jumlah_nonmbr' => '',
            'no_bast' => '',
            'file_bast' => 'file|mimes:jpg,jpeg,png,pdf',
            'photo' => 'file|mimes:jpg,jpeg,png',
            'siteplan' => 'file|mimes:jpg,jpeg,png',
            'alamat' => 'required',
            'status_data' => 'required',
            'nama_pengembang' => 'required',
            'telepon_pengembang' => '',
            'email_pengembang' => '',
            'jumlah_proses' => '',
            'jumlah_ditempati' => '',
            'jumlah_kosong' => '',
            //'user_id_create' => 'required',
            //'user_id_update' => 'required',
            //'created_at' => 'required',
            //'updated_at' => 'required',
        ]);

        $user_id = Auth::user()->id;

        $file_bast = '';
        $photo = '';
        $siteplan = '';
        
        if ($request->file('file_bast')) {
            $file = $request->file('file_bast');
            $path = $file->store('uploads/pengajuan/file_bast', 'public');
            //$file_bast = $file->getClientOriginalName();
            //$file_bast = basename($path);
            $file_bast = $path;
        }
        
        if ($request->file('photo')) {
            $file = $request->file('photo');
            $path = $file->store('uploads/pengajuan/photo', 'public');
            //$photo = $file->getClientOriginalName();
            //$photo = basename($path);
            $photo = $path;
        }
        
        if ($request->file('siteplan')) {
            $file = $request->file('siteplan');
            $path = $file->store('uploads/pengajuan/siteplan', 'public');
            //$siteplan = $file->getClientOriginalName();
            //$siteplan = basename($path);
            $siteplan = $path;
        }
        
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $latlong = (empty($latitude.$longitude))?null:new Point($latitude,$longitude, Srid::WGS84->value);
        $pengajuan = PengajuanModel::find($id);
        $pengajuan->provinsi_id = 63;
        $pengajuan->kabkota_id = $request->input('kabkota_id');
        $pengajuan->kecamatan_id = $request->input('kecamatan_id');
        $pengajuan->kelurahan_id = $request->input('kelurahan_id');
        //$pengajuan->pengembang_id = $request->input('pengembang_id');
        $pengajuan->nama_pengajuan = $request->input('nama_pengajuan');
        $pengajuan->luas = $request->input('luas');
        $pengajuan->tahun_siteplan = $request->input('tahun_siteplan');
        $pengajuan->latitude = $request->input('latitude');
        $pengajuan->longitude = $request->input('longitude');
        $pengajuan->latlong = $latlong;
        $pengajuan->total_unit = $request->input('total_unit');
        $pengajuan->jumlah_mbr = $request->input('jumlah_mbr');
        $pengajuan->jumlah_nonmbr = $request->input('jumlah_nonmbr');
        $pengajuan->no_bast = $request->input('no_bast');
        //$pengajuan->file_bast = $request->input('file_bast');
        //$pengajuan->photo = $request->input('photo');
        //$pengajuan->siteplan = $request->input('siteplan');
        $pengajuan->alamat = $request->input('alamat');
        $pengajuan->nama_pengembang = $request->input('nama_pengembang');
        $pengajuan->telepon_pengembang = $request->input('telepon_pengembang');
        $pengajuan->email_pengembang = $request->input('email_pengembang');
        $pengajuan->jumlah_proses = $request->input('jumlah_proses');
        $pengajuan->jumlah_ditempati = $request->input('jumlah_ditempati');
        $pengajuan->jumlah_kosong = $request->input('jumlah_kosong');
        //$pengajuan->user_id_create = $request->input('user_id_create');
        $pengajuan->user_id_update = $user_id;
        //$pengajuan->created_at = $request->input('created_at');
        $pengajuan->updated_at = date("Y-m-d H:i:s");
        
        if(!empty($file_bast))
        {
            $pengajuan->file_bast = $file_bast;
        }
        if(!empty($photo))
        {
            $pengajuan->photo = $photo;
        }
        if(!empty($siteplan))
        {
            $pengajuan->siteplan = $siteplan;
        }


        $pengajuan->save();


        return redirect()->route('admin.pengajuan.index')
            ->with('success', 'Pengajuan berhasil diubah');
    }

    public function destroy(PengajuanModel $pengajuan, Request $request)
    {
        $pengajuan->delete();
        return redirect()->route('admin.pengajuan.index')
            ->with('success', 'Pengajuan telah dihapus');
    }
}
