<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;

class Guardian extends Model
{
  // use Translatable;
  public function districtId()
  {
    return $this->belongsTo(Khan::class, 'district_id');
  }
  public function communeId()
  {
    return $this->belongsTo(Sangkat::class, 'commune_id');
  }

  public function studentId()
  {
    return $this->belongsTo(Student::class, 'student_id');
  }
}
