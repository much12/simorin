<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = 'mskategori';
    protected $primaryKey = 'id_kategori';
    public $timestamps = false;
}
