<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Admin\AksesModel;
use Yajra\DataTables\DataTables;
use App\Models\Admin\CustomerModel;
use App\Http\Controllers\Controller;
use App\Models\Admin\BarangdipinjamModel;
use App\Models\Admin\BarangkeluarModel;
use App\Models\Admin\BarangmasukModel;
use App\Models\Admin\BarangModel;
use App\Models\Admin\PenanggungJawabModel;
use App\Models\Admin\RuangModel;
use Illuminate\Support\Facades\Session;

class BarangdipinjamController extends Controller
{
    public function index()
    {
        $data["title"] = "Barang Dipinjam";
        $data["hakTambah"] = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
            ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Barang Masuk', 'tbl_akses.akses_type' => 'create'))
            ->count();
        $data["hakTambahRuang"] = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')
            ->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Ruang', 'tbl_akses.akses_type' => 'create'))
            ->count();
        $data["customer"] = CustomerModel::orderBy('customer_id', 'DESC')->get();
        $data["ruang"] = RuangModel::orderBy('ruang_id', 'DESC')->get();
        $data["penanggungjawab"] = PenanggungJawabModel::orderBy('penanggungjawab_id', 'DESC')->get(); // Add this line to get penanggungjawab data
        return view('Admin.BarangdiPinjam.index', $data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = BarangdipinjamModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangdipinjam.barang_kode')
                ->leftJoin('tbl_customer', 'tbl_customer.customer_id', '=', 'tbl_barangdipinjam.customer_id')
                ->leftJoin('tbl_ruang', 'tbl_ruang.ruang_id', '=', 'tbl_barangdipinjam.ruang_id')
                ->leftJoin('tbl_penanggungjawab', 'tbl_penanggungjawab.penanggungjawab_id', '=', 'tbl_barangdipinjam.penanggungjawab_id') // Join penanggungjawab table
                ->orderBy('barangdipinjam_id', 'DESC')
                ->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('tgl', function ($row) {
                    $tgl = $row->barangdipinjam_tanggal == '' ? '-' : Carbon::parse($row->barangdipinjam_tanggal)->translatedFormat('d F Y');
                    return $tgl;
                })
                ->addColumn('lama_dipinjam', function ($row) {
                    if ($row->barangdipinjam_tanggal != '' && $row->barangdipinjam_lama != '') {
                        $tanggalDipinjam = Carbon::parse($row->barangdipinjam_tanggal);
                        $lamaDipinjam = Carbon::parse($row->barangdipinjam_lama);
                        $selisih = $tanggalDipinjam->diffInDays($lamaDipinjam);

                        if ($selisih >= 30) {
                            $bulan = floor($selisih / 30);
                            $hariSisa = $selisih % 30;
                            $hasil = ($bulan == 1 ? '1 Bulan' : $bulan . ' Bulan') . ($hariSisa > 0 ? ' ' . $hariSisa . ' Hari' : '');
                            return $hasil;
                        } else {
                            return $selisih . ' Hari';
                        }
                    } else {
                        return '-';
                    }
                })
                ->addColumn('customer', function ($row) {
                    $customer = $row->customer_id == '' ? '-' : $row->customer_nama;
                    return $customer;
                })
                ->addColumn('customer_notelp', function ($row) {
                    $customer_notelp = $row->customer_id == '' ? '-' : $row->customer_notelp;
                    return $customer_notelp;
                })
                ->addColumn('customer_alamat', function ($row) {
                    $customer_alamat = $row->customer_id == '' ? '-' : $row->customer_alamat;
                    return $customer_alamat;
                })
                ->addColumn('barang', function ($row) {
                    $barang = $row->barang_id == '' ? '-' : $row->barang_nama;
                    return $barang;
                })
                ->addColumn('ruang', function ($row) {
                    $ruang = $row->ruang_id == '' ? '-' : $row->ruang_nama;
                    return $ruang;
                })
                ->addColumn('penanggungjawab', function ($row) { // Add column for penanggungjawab
                    $penanggungjawab = $row->penanggungjawab_id == '' ? '-' : $row->penanggungjawab_nama;
                    return $penanggungjawab;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "barangdipinjam_id"      => $row->barangdipinjam_id,
                        "barangdipinjam_kode"    => $row->barangdipinjam_kode,
                        "barang_kode"            => $row->barang_kode,
                        "customer_id"            => $row->customer_id,
                        "ruang_id"               => $row->ruang_id,
                        "penanggungjawab_id"     => $row->penanggungjawab_id, // Include penanggungjawab_id in the array
                        "barangdipinjam_tanggal" => $row->barangdipinjam_tanggal,
                        "barangdipinjam_jumlah"  => $row->barangdipinjam_jumlah,
                        "barangdipinjam_lama"    => $row->barangdipinjam_lama
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
        // Ambil jumlah stok barang yang ada
        $barang = BarangModel::where('barang_kode', $request->barang)->first();

        if ($barang) {
            $stokTersedia = $barang->barang_stok;
            $jumlahDipinjam = $request->jml;

            // Cek apakah stok mencukupi
            if ($stokTersedia >= $jumlahDipinjam) {
                // Update stok
                $barang->barang_stok = $stokTersedia - $jumlahDipinjam;
                $barang->save();

                // Insert data
                BarangdipinjamModel::create([
                    'barangdipinjam_tanggal' => $request->tgldipinjam,
                    'barangdipinjam_kode'    => $request->bdpkode,
                    'barang_kode'            => $request->barang,
                    'customer_id'            => $request->customer,
                    'ruang_id'               => $request->ruang,
                    'penanggungjawab_id'     => $request->penanggungjawab,
                    'barangdipinjam_jumlah'  => $jumlahDipinjam,
                    'barangdipinjam_lama'    => $request->lamadipinjam,
                ]);

                return response()->json(['success' => 'Berhasil']);
            } else {
                return response()->json(['error' => 'Stok tidak mencukupi'], 400);
            }
        } else {
            return response()->json(['error' => 'Barang tidak ditemukan'], 404);
        }
    }

    public function proses_ubah(Request $request, BarangdipinjamModel $barangdipinjam)
    {
        // Ambil jumlah stok barang yang ada
        $barang = BarangModel::where('barang_kode', $request->barang)->first();

        if ($barang) {
            $stokTersedia = $barang->barang_stok;
            $jumlahDipinjam = $request->jml;

            // Cek apakah stok mencukupi
            if ($stokTersedia >= $jumlahDipinjam) {
                // Update stok
                $barang->barang_stok = $stokTersedia - $jumlahDipinjam;
                $barang->save();

                // Insert data
                $barangdipinjam->update([
                    'barangdipinjam_tanggal' => $request->tgldipinjam,
                    'barang_kode'            => $request->barang,
                    'customer_id'            => $request->customer,
                    'ruang_id'               => $request->ruang,
                    'penanggungjawab_id'     => $request->penanggungjawab,
                    'barangdipinjam_jumlah'  => $request->jml,
                    'barangdipinjam_lama'    => $request->lamadipinjam,
                ]);

                return response()->json(['success' => 'Berhasil']);
            } else {
                return response()->json(['error' => 'Stok tidak mencukupi'], 400);
            }
        } else {
            return response()->json(['error' => 'Barang tidak ditemukan'], 404);
        }
    }

    public function proses_hapus(Request $request, BarangdipinjamModel $barangdipinjam)
    {
        //delete
        $barangdipinjam->delete();

        return response()->json(['success' => 'Berhasil']);
    }
}