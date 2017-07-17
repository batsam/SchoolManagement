<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;

class Employee extends Model
{
  // use Translatable;
  public function khanId()
  {
    return $this->belongsTo(Khan::class, 'khan_id');
  }
  public function sangkatId()
  {
    return $this->belongsTo(Sangkat::class, 'sangkat_id');
  }
  // public function positionId()
  // {
  //   return $this->belongsTo(Position::class, 'position_id');
  // }
  // public function getFullNameAttribute($value)
  // {
  //   return $this->Title . ' ' . ucwords($value) ;
  // }
  public function setFullNameAttribute($value)
  {
    $this->attributes['fullname'] = ucwords($value);
  }


}
