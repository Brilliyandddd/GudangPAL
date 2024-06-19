<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RuangModel extends Model
{
    use HasFactory;
    protected $table = "tbl_ruang";
    protected $primaryKey = 'ruang_id';
    protected $fillable = [
        'ruang_nama',
        'ruang_slug',
    ];
}
