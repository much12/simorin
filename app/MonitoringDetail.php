<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MonitoringDetail extends Model
{
    protected $table = 'tb_monitoring_detail';
    protected $primaryKey = 'id_monitoring_detail';
    public $timestamps = false;

    public function detSiswa()
    {
        return $this->belongsTo(Siswa::class, 'nis_siswa');
    }
}
