@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@if(isset($dataTypeContent->id))
    @section('page_title','Edit '.$dataType->display_name_singular)
@else
    @section('page_title','Add '.$dataType->display_name_singular)
@endif

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i> @if(isset($dataTypeContent->id)){{ 'Edit' }}@else{{ 'New' }}@endif {{ $dataType->display_name_singular }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
  <style media="screen">
    label{
      color:black;
    }
  </style>
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">

                    <div class="panel-heading">
                        <h3 class="panel-title">@if(isset($dataTypeContent->id)){{ 'Edit' }}@else{{ 'Add New' }}@endif {{ $dataType->display_name_singular }}</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form-inline"
                            class="form-edit-add"
                            action="@if(isset($dataTypeContent->id)){{ route('voyager.scores.update', $dataTypeContent->id) }}@else{{ route('voyager.scores.store') }}@endif"
                            method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        @if(isset($dataTypeContent->id))
                            {{ method_field("PUT") }}
                        @endif

                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="row ">
                            <div class="col-md-12">
                              {{-- Student Info --}}
                              <div class="panel">
                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif

                                <div class="panel-heading  col-md-offset-1">

                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> Score
                                  </h3>
                                  <div class="row container">
                                    <div class="form-group  " style="margin-left: 15px;">
                                      <div class="row">
                                        <div class="col-sm-2 ">
                                          <label for="name">Student</label>
                                          <select class="form-control select2 " name="student_id" autofocus  >
                                              @foreach(App\Student::all() as $student)
                                                  <option value="{{ $student->id }}" @if(isset($dataTypeContent->student_id) && $dataTypeContent->student_id == $student->id){{ 'selected="selected"' }}@endif>{{$student->id}}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Class</label>
                                          <select class="form-control select2" name="class_id">
                                              @foreach(App\Room::all() as $room)
                                                  <option value="{{ $room->id }}" @if(isset($dataTypeContent->class_id) && $dataTypeContent->class_id == $room->id){{ 'selected="selected"' }}@endif>{{ $room->name }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Academic</label>
                                          <select class="form-control" name="academic_id">
                                              @foreach(App\Academic::all() as $academic)
                                                  <option value="{{ $academic->id }}" @if(isset($dataTypeContent->academic_id) && $dataTypeContent->academic_id == $academic->id){{ 'selected="selected"' }}@endif>{{ $academic->year }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Subject</label>
                                          <select class="form-control selcect2" name="subject_id">
                                              @foreach(App\Subject::all() as $subject)
                                                  <option value="{{ $subject->id }}" @if(isset($dataTypeContent->subject_id) && $dataTypeContent->subject_id == $subject->id){{ 'selected="selected"' }}@endif>{{ $subject->name }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Month</label>
                                          <select class="form-control select2"name="Month">
                                                  <option value="January"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'January'){{'selected="selected"'}}@endif>January</option>
                                                  <option value="February"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'February'){{'selected="selected"'}}@endif>February</option>
                                                  <option value="March"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'March'){{'selected="selected"'}}@endif>March</option>
                                                  <option value="April"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'April'){{'selected="selected"'}}@endif>April</option>
                                                  <option value="May"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'May'){{'selected="selected"'}}@endif>May</option>
                                                  <option value="June"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'June'){{'selected="selected"'}}@endif>June</option>
                                                  <option value="July"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'July'){{'selected="selected"'}}@endif>July</option>
                                                  <option value="August"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'August'){{'selected="selected"'}}@endif>August</option>
                                                  <option value="September"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'September'){{'selected="selected"'}}@endif>September</option>
                                                  <option value="October"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'October'){{'selected="selected"'}}@endif>October</option>
                                                  <option value="November"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'November'){{'selected="selected"'}}@endif>November</option>
                                                  <option value="December"@if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'December'){{'selected="selected"'}}@endif>December</option>
                                               </select>                                                       </div>
                                        <div class="col-sm-2">
                                          <label for="name">Score Type</label>
                                          <select class="form-control select2"name="Score_type">
                                                  <option value="Month"@if(isset($dataTypeContent->Score_type)&& $dataTypeContent->Score_type == 'Month'){{'selected="selected"'}}@endif>Month</option>
                                                  <option value="Semester"@if(isset($dataTypeContent->Score_type)&& $dataTypeContent->Score_type == 'Semester'){{'selected="selected"'}}@endif>Semester</option>
                                                  <option value="Year"@if(isset($dataTypeContent->Score_type)&& $dataTypeContent->Score_type == 'Year'){{'selected="selected"'}}@endif>Year</option>                                        </div>
                                        <div class="col-sm-2" style="float:right;">
                                          <label for="name">Total</label>
                                          <input type="number" name="Total" min="0" max="10" step="any" class="form-control" placeholder="Total" value="@if(isset($dataTypeContent->Total)){{$dataTypeContent->Total}}@endif">
                                        </div>

                                      </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary pull-right">
                              @if(isset($dataTypeContent->id)){{ 'Update Score' }}@else <i class="icon wb-plus-circle"></i> Add Student Score @endif
                            </button>
                        </div>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                            enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                        <input name="image" id="upload_file" type="file"
                                 onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                        {{ csrf_field() }}
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> Are You Sure</h4>
                </div>

                <div class="modal-body">
                    <h4>Are you sure you want to delete '<span class="confirm_delete_name"></span>'</h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">Yes, Delete it!
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->
@stop

@section('javascript')
    <script>
        var params = {}
        var $image

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.type != 'date' || elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', function (e) {
                $image = $(this).siblings('img');

                params = {
                    slug:   '{{ $dataTypeContent->getTable() }}',
                    image:  $image.data('image'),
                    id:     $image.data('id'),
                    field:  $image.parent().data('field-name'),
                    _token: '{{ csrf_token() }}'
                }

                $('.confirm_delete_name').text($image.data('image'));
                $('#confirm_delete_modal').modal('show');
            });

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $image.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing image.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    @if($isModelTranslatable)
        <script src="{{ voyager_asset('js/multilingual.js') }}"></script>
    @endif
    <script src="{{ voyager_asset('lib/js/tinymce/tinymce.min.js') }}"></script>
    <script src="{{ voyager_asset('js/voyager_tinymce.js') }}"></script>
    <script src="{{ voyager_asset('lib/js/ace/ace.js') }}"></script>
    <script src="{{ voyager_asset('js/voyager_ace_editor.js') }}"></script>
    <script src="{{ voyager_asset('js/slugify.js') }}"></script>
@stop
