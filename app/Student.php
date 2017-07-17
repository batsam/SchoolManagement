<?php

namespace App;// namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;


class Student extends Model
{
    protected $table = 'students';
    // use SoftDeletes;
    // use Translatable;
    // protected $translatable = ['year'];
    // protected $dates = ['deleted_at'];

    public function classId()
    {
      return $this->belongsTo(Room::class,'class_id');
    }
    public function academicId()
    {
      return $this->belongsTo(Academic::class,'academic_id');
    }
    public function districtId()
    {
      return $this->belongsTo(Khan::class, 'district_id');
    }
    public function communeId()
    {
      return $this->belongsTo(Sangkat::class, 'commune_id');
    }
    // public function schoolId(){
    //   return $this->hasOne(Student::class,'school_id');
    // }

    // public function getFullNameAttribute($value)
    // {
    //   return $this->id . ' ' . ucwords($value) ;
    // }
    public function setFullNameAttribute($value)
    {
      $this->attributes['fullname'] = ucwords($value);
    }
    public function thumbnail($type)
    {
        // We take image from posts field
        $image = $this->attributes['Image'];
        // We need to get extension type ( .jpeg , .png ...)
        $ext = pathinfo($image, PATHINFO_EXTENSION);
        // We remove extension from file name so we can append thumbnail type
        $name = rtrim($image, '.'.$ext);
        // We merge original name + type + extension
        return $name.'-'.$type.'.'.$ext;
    }
    // public function scopePublished(Builder $query)
    // {
    //     return $query->where('status', '=', static::PUBLISHED);
    // }
}
