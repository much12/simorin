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
            ->where('nis', $nis)->where('status_hadir', 1)
            ->whereBetween('waktu_masuk', [$first, $last])->get();
    }

    public function JurnalSiswa($nis)
    {
        return DB::table('mssiswa')->join('mscompany', 'mscompany.id', '=', 'mssiswa.id_company')->where('nis', $nis)->get();
    }

    public function getContentWithFilter($perusahaan, $siswa, $fromdate, $todate)
    {
        $where = array();

        if ($perusahaan !== null) {
            $where[] = array(
                'mssiswa.id_company', '=', $perusahaan
            );
        }

        if ($siswa !== null) {
            $where[] = array(
                'mssiswa.nis', '=', $siswa
            );
        }

        if ($fromdate !== null) {
            $where[] = array(
                'tbjurnal.waktu_masuk', '>=', $fromdate
            );
        }

        if ($todate !== null) {
            $where[] = array(
                'tbjurnal.waktu_masuk', '<=', $todate
            );
        }

        return DB::table('tbjurnal')
            ->select(array(
                'tbjurnal.*',
                'mssiswa.jam_masuk',
                'mscompany.nama_perusahaan',
                'mssiswa.nama'
            ))
            ->join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
            ->join('mscompany', 'mscompany.id', '=', 'mssiswa.id_company')
            ->where($where)
            ->get();

        // if ($perusahaan !== null) {
        //     $this->where('mssiswa.id_company', $perusahaan);
        // }

        // if ($siswa !== null) {
        //     $this->where('mssiswa.nis',  $siswa);
        // }

        // if ($fromdate !== null) {
        //     $this->where('DATE(tbjurnal.waktu_masuk)', '>=', $fromdate);
        // }

        // if ($todate !== null) {
        //     $this->where('DATE(tbjurnal.waktu_masuk)', '<=', $todate);
        // }
    }
}
