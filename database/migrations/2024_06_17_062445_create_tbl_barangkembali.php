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
        Schema::create('tbl_barangkembali', function (Blueprint $table) {
            $table->increments('barangkembali_id');
            $table->string('barangkembali_kode');
            $table->string('barang_kode');
            $table->string('customer_id');
            $table->string('ruang_id');
            $table->string('barangdipinjam_tanggal');
            $table->string('barangdipinjam_jumlah');
            $table->string('barangkembali_tanggal');
            $table->string('barangkembali_jumlah');
            $table->string('barangrusak_jumlah')->nullable();
            $table->string('barang_keterangan')->nullable();
            $table->string('barangkembali_keterangan')->nullable();
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
        Schema::dropIfExists('tbl_barangkembali');
    }
};
