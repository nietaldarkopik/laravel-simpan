<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UnitModel extends Model
{
    public $timestamps = false;
    use HasFactory;
    protected $table = 'units'; // Nama tabel dalam database

    protected $fillable = [
        'code','parent_code','nama','keterangan'
    ];
}
