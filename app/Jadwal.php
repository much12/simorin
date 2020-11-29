<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model
{
    protected $table = 'tbjadwal';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
