<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    protected $table = 'msjurusan';
    public $timestamps = false;
    protected $primaryKey = 'id';

    public function bidang()
    {
        return $this->belongsTo(Bidang::class, 'id_bidang');
    }
}
