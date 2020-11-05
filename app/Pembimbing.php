<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Role;

class Pembimbing extends Model
{
    protected $table = 'mspembimbing';
    public $timestamps = false;
    protected $primaryKey = 'id';

    public function roleRel()
    {
        return $this->belongsTo(Role::class, 'role');
    }
}
