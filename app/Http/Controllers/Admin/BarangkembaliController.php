<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Admin\AksesModel;
use App\Models\Admin\CustomerModel;
use App\Http\Controllers\Controller;
use App\Models\Admin\BarangkembaliModel;
use App\Models\Admin\PenanggungJawabModel;
use App\Models\Admin\RuangModel;
use Illuminate\Support\Facades\Session;
use Yajra\DataTables\DataTables;

class BarangkembaliController extends Controller
{
    public function index()
    {
        $data["title"] = "Barang Kembali";
        $data["hakTambah"] = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
            ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Barang Masuk', 'tbl_akses.akses_type' => 'create'))
            ->count();
        $data["hakTambahRuang"] = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
            ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Ruang', 'tbl_akses.akses_type' => 'create'))
            ->count();
        $data["customer"] = CustomerModel::orderBy('customer_id', 'DESC')->get();
        $data["ruang"] = RuangModel::orderBy('ruang_id', 'DESC')->get();
        return view('Admin.BarangKembali.index', $data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = BarangkembaliModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkembali.barang_kode')
                ->leftJoin('tbl_customer', 'tbl_customer.customer_id', '=', 'tbl_barangkembali.customer_id')
                ->leftJoin('tbl_ruang', 'tbl_ruang.ruang_id', '=', 'tbl_barangkembali.ruang_id')
                ->orderBy('barangkembali_id', 'DESC')
                ->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('tgl', function ($row) {
                    $tgl = $row->barangkembali_tanggal == '' ? '-' : Carbon::parse($row->barangkembali_tanggal)->translatedFormat('d F Y');
                    return $tgl;
                })
                ->addColumn('tgl_dipinjam', function ($row) {
                    $tgl_dipinjam = $row->barangdipinjam_tanggal == '' ? '-' : Carbon::parse($row->barangdipinjam_tanggal)->translatedFormat('d F Y');
                    return $tgl_dipinjam;
                })
                ->addColumn('customer', function ($row) {
                    $customer = $row->customer_id == '' ? '-' : $row->customer_nama;
                    return $customer;
                })
                ->addColumn('customer_notelp', function ($row) {
                    $customer_notelp = $row->customer_id == '' ? '-' : $row->customer_notelp;
                    return $customer_notelp;
                })
                ->addColumn('barang', function ($row) {
                    $barang = $row->barang_id == '' ? '-' : $row->barang_nama;
                    return $barang;
                })
                ->addColumn('ruang', function ($row) {
                    $ruang = $row->ruang_id == '' ? '-' : $row->ruang_nama;
                    return $ruang;
                })
                ->addColumn('keterangan_pengembalian', function ($row) {
                    $keterangan_pengembalian = $row->barangkembali_keterangan == '' ? '-' : $row->barangkembali_keterangan;

                    return $keterangan_pengembalian;
                })
                ->addColumn('keterangan_barang', function ($row) {
                    $keterangan_barang = $row->barang_keterangan == '' ? '-' : $row->barang_keterangan;

                    return $keterangan_barang;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "barangkembali_id"         => $row->barangkembali_id,
                        "barangkembali_kode"       => $row->barangkembali_kode,
                        "barang_kode"              => $row->barang_kode,
                        "customer_id"              => $row->customer_id,
                        "ruang_id"                 => $row->ruang_id,
                        "barangdipinjam_tanggal"   => $row->barangdipinjam_tanggal,
                        "barangkembali_tanggal"    => $row->barangkembali_tanggal,
                        "barangdipinjam_jumlah"    => $row->barangdipinjam_jumlah,
                        "barangkembali_jumlah"     => $row->barangkembali_jumlah,
                        "barangrusak_jumlah"       => $row->barangrusak_jumlah,
                    );

                    $button = '';
                    $hakEdit = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
                        ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Barang Dipinjam', 'tbl_akses.akses_type' => 'update'))
                        ->count();
                    $hakDelete = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
                        ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Barang Dipinjam', 'tbl_akses.akses_type' => 'delete'))
                        ->count();
                    if ($hakEdit > 0 && $hakDelete > 0) {
                        $button .= '
                <div class="g-2">
                <a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>
                <a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>
                </div>
                ';
                    } else if (
                        $hakEdit > 0 && $hakDelete == 0
                    ) {
                        $button .= '
                <div class="g-2">
                    <a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>
                </div>
                ';
                    } else if ($hakEdit == 0 && $hakDelete > 0) {
                        $button .= '
                <div class="g-2">
                <a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>
                </div>
                ';
                    } else {
                        $button .= '-';
                    }
                    return $button;
                })
                ->rawColumns(['action', 'tgl', 'customer', 'barang', 'ruang', 'penanggungjawab']) // Add 'penanggungjawab' to rawColumns
                ->make(true);
        }
    }

    public function proses_tambah(Request $request)
    {

        //insert data
        BarangkembaliModel::create([
            'barangdipinjam_tanggal'   => $request->tgldipinjam,
            'barangkembali_tanggal'    => $request->tglkembali,
            'barangkembali_kode'       => $request->bkmkode,
            'barang_kode'              => $request->barang,
            'customer_id'              => $request->customer,
            'ruang_id'                 => $request->ruang,
            'barangdipinjam_jumlah'    => $request->jml_dipinjam,
            'barangkembali_jumlah'     => $request->jml_kembali,
            'barangrusak_jumlah'       => $request->jml_rusak,
            'barang_keterangan'        => $request->keterangan_barang,
            'barangkembali_keterangan' => $request->keterangan_pengembalian,
        ]);

        return response()->json(['success' => 'Berhasil']);
    }


    public function proses_ubah(Request $request, BarangkembaliModel $barangkembali)
    {
        //update data
        $barangkembali->update([
            'barangdipinjam_tanggal'   => $request->tgldipinjam,
            'barangkembali_tanggal'    => $request->tglkembali,
            'barang_kode'              => $request->barang,
            'customer_id'              => $request->customer,
            'ruang_id'                 => $request->ruang,
            'barangdipinjam_jumlah'    => $request->jml_dipinjam,
            'barangkembali_jumlah'     => $request->jml_kembali,
            'barangrusak_jumlah'       => $request->jml_rusak,
            'barang_keterangan'        => $request->keterangan_barang,
            'barangkembali_keterangan' => $request->keterangan_pengembalian
        ]);

        return response()->json(['success' => 'Berhasil']);
    }

    public function proses_hapus(Request $request, BarangkembaliModel $barangkembali)
    {
        //delete
        $barangkembali->delete();

        return response()->json(['success' => 'Berhasil']);
    }
}
