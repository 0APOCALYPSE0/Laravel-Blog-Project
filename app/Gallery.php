<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    //fillable properties
    protected $fillable = ['user_id', 'image_url'];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
