<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembimbing extends Model
{
    protected $table = 'mspembimbing';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
