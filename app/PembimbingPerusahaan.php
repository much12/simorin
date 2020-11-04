<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Company;
use App\Role;

class PembimbingPerusahaan extends Model
{
    protected $table = 'mspembimbingperusahaan';
    public $timestamps = false;
    protected $primaryKey = 'id';

    public function perusahaan()
    {
        return $this->hasOne(Company::class, 'id_pembimbing_perusahaan');
    }

    public function roleRel()
    {
        return $this->belongsTo(Role::class, 'role');
    }
}
