<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $table = 'mssiswa';
    public $timestamps = false;
    protected $primaryKey = 'nis';

    public function jurusan()
    {
        return $this->belongsTo(Jurusan::class, 'id_jurusan');
    }

    public function guru()
    {
        return $this->belongsTo(Guru::class, 'id_guru');
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'id_company');
    }

    public function roleRel()
    {
        return $this->belongsTo(Role::class, 'role');
    }
}
