<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Score extends Model
{
  use Translatable;
  public function classId()
  {
    return $this->belongsTo(Room::class,'class_id');
  }
  public function academicId()
  {
    return $this->belongsTo(Academic::class,'academic_id');
  }
  public function subjectId()
  {
    return $this->belongsTo(Subject::class,'subject_id');
  }
  public function studentId()
  {
    return $this->belongsTo(Student::class,'student_id');
  }

}
