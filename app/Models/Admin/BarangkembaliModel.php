<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangkembaliModel extends Model
{
    use HasFactory;
    protected $table = "tbl_barangkembali";
    protected $primaryKey = 'barangkembali_id';
    protected $fillable = [
        'barangkembali_kode',
        'barang_kode',
        'customer_id',
        'ruang_id',
        'penanggungjawab_id',
        'barangdipinjam_tanggal',
        'barangdipinjam_jumlah',
        'barangkembali_tanggal',
        'barangkembali_jumlah',
        'barangrusak_jumlah',
        'barangkembali_keterangan',
        'barang_keterangan'
    ];
}
