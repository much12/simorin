<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Monitoring extends Model
{
    protected $table = 'tb_monitoring';
    protected $primaryKey = 'id_monitoring';
    public $timestamps = false;

    public function getRecord($id)
    {
        return DB::table('tb_monitoring')
            ->leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
            ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
            ->where('tb_monitoring.id_monitoring', $id)
            ->get();
    }

    public function perusahaan()
    {
        return $this->belongsTo(Company::class, 'id_company');
    }

    public function detail()
    {
        return $this->hasMany(MonitoringDetail::class, 'id_monitoring');
    }

    public function pembimbing()
    {
        return $this->belongsTo(Pembimbing::class, 'id_user');
    }
}
