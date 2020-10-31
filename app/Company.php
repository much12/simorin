<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $table = 'mscompany';
    public $timestamps = false;
    protected $primaryKey = 'id';

    public function bidang()
    {
        return $this->belongsTo(Bidang::class);
    }

    public function pembimbing()
    {
        return $this->belongsTo(Pembimbing::class);
    }

    public function pembimbingperusahaan()
    {
        return $this->belongsTo(PembimbingPerusahaan::class);
    }
}
