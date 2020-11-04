<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'msrole';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
