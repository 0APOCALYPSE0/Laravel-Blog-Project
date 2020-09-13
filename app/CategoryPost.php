<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryPost extends Model
{
    //fillable properties
    protected $fillable = ['category_id', 'post_id'];
}
