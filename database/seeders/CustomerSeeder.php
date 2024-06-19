<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbl_customer')->insert(
            [
                [
                    'customer_nama' => 'Frimawan Griya',
                    'customer_slug' => 'frimawan-griya',
                    'customer_alamat' => 'Yogyakarta',
                    'customer_notelp' => '083817379254',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
                [
                    'customer_nama' => 'Shalsa Tama',
                    'customer_slug' => 'shalsa-tama',
                    'customer_alamat' => 'Bekasi',
                    'customer_notelp' => '083817389553',
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                ],
            ]
        );
    }
}
