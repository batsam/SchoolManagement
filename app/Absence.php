<?php

namespace App;
// namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use App\Translatable;
class Absence extends Model

{
  // use Translatable;
  public function classId()
  {
    return $this->belongsTo(Room::class,'class_id');
  }
  public function acadamicId()
  {
    return $this->belongsTo(Academic::class,'acadamic_id');
  }
  public function studentId()
  {
    return $this->belongsTo(Student::class,'student_id');
  }
}
