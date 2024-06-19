<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangKembaliSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbl_barangkembali')->insert(
            [
                [
                    'barangkembali_kode' => 'BKM-1669390230436',
                    'barang_kode' => 'BRG-1669390220236',
                    'customer_id' => '5',
                    'ruang_id' => '2',
                    'barangdipinjam_tanggal' => '2024-06-05',
                    'barangdipinjam_jumlah' => '30',
                    'barangkembali_tanggal' => '2024-06-03',
                    'barangkembali_jumlah' => '20',
                    'barangrusak_jumlah' => '2',
                    'barangkembali_keterangan' => 'Telat',
                    'barang_keterangan' => '',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
                [
                    'barangkembali_kode' => 'BKM-1669390120336',
                    'barang_kode' => 'BRG-1669390175622',
                    'customer_id' => '2',
                    'ruang_id' => '1',
                    'barangdipinjam_tanggal' => '2024-06-05',
                    'barangdipinjam_jumlah' => '30',
                    'barangkembali_tanggal' => '2024-06-03',
                    'barangkembali_jumlah' => '30',
                    'barangrusak_jumlah' => '2',
                    'barangkembali_keterangan' => '',
                    'barang_keterangan' => '',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
            ]
        );
    }
}
