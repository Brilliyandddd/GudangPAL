<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangdipinjamModel extends Model
{
    use HasFactory;
    protected $table = "tbl_barangdipinjam";
    protected $primaryKey = 'barangdipinjam_id';
    protected $fillable = [
        'barangdipinjam_kode',
        'barang_kode',
        'customer_id',
        'ruang_id',
        'penanggungjawab_id',
        'barangdipinjam_tanggal',
        'barangdipinjam_jumlah',
        'barangdipinjam_lama',
    ];
}
