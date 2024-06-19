<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenanggungJawabModel extends Model
{
    use HasFactory;
    protected $table = "tbl_penanggungjawab";
    protected $primaryKey = 'penanggungjawab_id';
    protected $fillable = [
        'penanggungjawab_nama',
        'penanggungjawab_slug',
    ];
}
