<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MonitoringDetail extends Model
{
    protected $table = 'tb_monitoring_detail';
    protected $primaryKey = 'id_monitoring_detail';
    public $timestamps = false;

    public function detSiswa()
    {
        return $this->belongsTo(Siswa::class, 'nis_siswa');
    }

    public function getRecord($id)
    {
        return DB::table('tb_monitoring_detail')
            ->join('mssiswa', 'mssiswa.nis', '=', 'tb_monitoring_detail.nis_siswa')
            ->where('id_monitoring', $id)
            ->get();
    }
}
