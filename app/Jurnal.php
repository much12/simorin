<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jurnal extends Model
{
    protected $table = 'tbjurnal';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'nis');
    }
}
