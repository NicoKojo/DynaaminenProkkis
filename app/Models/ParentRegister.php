<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentRegister extends Model
{
    use HasFactory;

    protected $table = 'parent_register'; // Specify the table name if it's different from the standard Laravel convention

    protected $fillable = [
        'pccountry',
        'pcname',
        'pcscoutid',
        'pctroop',
        'pccircle',
        'pcage',
    ];
}
