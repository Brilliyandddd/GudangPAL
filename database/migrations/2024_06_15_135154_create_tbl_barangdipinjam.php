<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_barangdipinjam', function (Blueprint $table) {
            $table->increments('barangdipinjam_id');
            $table->string('barangdipinjam_kode');
            $table->string('barang_kode');
            $table->string('customer_id');
            $table->string('ruang_id');
            $table->string('penanggungjawab_id');
            $table->string('barangdipinjam_tanggal');
            $table->string('barangdipinjam_jumlah');
            $table->string('barangdipinjam_lama');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_barangdipinjam');
    }
};
