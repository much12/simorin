<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Jurnal extends Model
{
    protected $table = 'tbjurnal';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'nis');
    }

    public function JurnalDate($nis, $first, $last)
    {
        return DB::table('tbjurnal')
            ->where('nis', $nis)->where('status', 1)
            ->whereBetween('waktu_masuk', [$first, $last])->get();
    }

    public function JurnalSiswa($nis)
    {
        return DB::table('mssiswa')->join('mscompany', 'mscompany.id', '=', 'mssiswa.id_company')->where('nis', $nis)->get();
    }
}
