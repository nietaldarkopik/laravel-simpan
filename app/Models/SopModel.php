<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SopModel extends Model
{
    use SoftDeletes;

    public $timestamps = false;
    use HasFactory;
    protected $table = 'sops'; // Nama tabel dalam database

    protected $fillable = [
        'sop','prosedur',
    ];
    
    protected $dates = ['deleted_at'];

}
