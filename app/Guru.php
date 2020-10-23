<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    protected $table = 'msguru';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
