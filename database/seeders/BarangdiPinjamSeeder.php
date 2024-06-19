<?php

namespace Database\Seeders;

use Illuminate\Support\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangdiPinjamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbl_barangdipinjam')->insert(
            [
                [
                    'barangdipinjam_kode' => 'BDP-1669390230436',
                    'barang_kode' => 'BRG-1669390220236',
                    'customer_id' => '5',
                    'ruang_id' => '2',
                    'penanggungjawab_id' => '11',
                    'barangdipinjam_tanggal' => '2024-06-03',
                    'barangdipinjam_jumlah' => '20',
                    'barangdipinjam_lama' => '2024-06-05',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
                [
                    'barangdipinjam_kode' => 'BDP-1669390120336',
                    'barang_kode' => 'BRG-1669390175622',
                    'customer_id' => '2',
                    'ruang_id' => '1',
                    'penanggungjawab_id' => '11',
                    'barangdipinjam_tanggal' => '2024-06-03',
                    'barangdipinjam_jumlah' => '30',
                    'barangdipinjam_lama' => '2024-06-04',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
            ]
        );
    }
}
