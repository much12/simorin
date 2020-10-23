<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $table = 'mscompany';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
