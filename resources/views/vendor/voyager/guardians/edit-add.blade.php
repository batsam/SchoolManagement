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
                            action="@if(isset($dataTypeContent->id)){{ route('voyager.guardians.update', $dataTypeContent->id) }}@else{{ route('voyager.guardians.store') }}@endif"
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

                                <div class="panel-heading">
                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> Guardian Info

                                  </h3>

                                  <div class="row container">
                                    <div class="form-group " style="margin-left: 15px;">
                                      <div class="row">
                                        {{-- <div class="col-sm-2">
                                          <label for="name">ID</label>
                                          <input type="text" id ="school_id" name="school_id" placeholder="id" class="form-control" value="@if(isset($dataTypeContent->school_id)){{ $dataTypeContent->school_id }}@endif">
                                        </div> --}}
                                        <div class="col-sm-4">
                                          <label for="name">Full Name</label>
                                          <input type="text" id="Fullname "name="Fullname" placeholder="Fullname" class="form-control" value="@if(isset($dataTypeContent->Fullname)){{$dataTypeContent->Fullname}}@endif">
                                        </div>
                                        <div class="col-sm-4">
                                          <label for="name">Job</label>
                                          <input type="text" id="Job" name="Job" placeholder="Guardian Job" class="form-control" value="@if(isset($dataTypeContent->Job)){{$dataTypeContent->Job}}@endif">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Phone</label>
                                          <input type="text" id="Phone" name="Phone" placeholder="Guardian Phone" class="form-control" value="@if(isset($dataTypeContent->Phone)){{$dataTypeContent->Phone}}@endif">
                                        </div>
                                        <div class="col-sm-2 ">
                                          <label for="name">Guardian of Student</label>
                                          <select class="form-control select2 " name="student_id" autofocus  >
                                              @foreach(App\Student::all() as $student)
                                                  <option value="{{ $student->school_id }}" @if(isset($dataTypeContent->student_id) && $dataTypeContent->student_id == $student->school_id){{ 'selected="selected"' }}@endif>{{ $student->school_id }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        {{-- <div class="col-sm-2">
                                          <label for="name">Image</label>
                                          @if(isset($dataTypeContent->Image))
                                              <img src="{{ Voyager::image($dataTypeContent->Image)  }}"
                                                   style="width:100px; height:100px; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:3px; margin-left:0px">
                                          @endif
                                          <input type="file" name="Image" style="margin-left:0px">
                                        </div> --}}
                                      </div>


                                    </div>
                                  </div>
                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> Address
                                  </h3>
                                  <div class="row container">
                                    <div class="form-group  " style="margin-left: 15px;">
                                      <div class="row">
                                        <div class="col-sm-2">
                                          <label for="name">House</label>
                                          <input type="text" id ="House" name="House" placeholder="House Number" class="form-control" value="@if(isset($dataTypeContent->House)){{ $dataTypeContent->House }}@endif">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Street</label>
                                          <input type="text" id="Street "name="Street" placeholder="Stree Number" class="form-control" value="@if(isset($dataTypeContent->Street)){{$dataTypeContent->Street}}@endif">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Group</label>
                                          <input type="text" id="Group "name="Group" placeholder="Group" class="form-control" value="@if(isset($dataTypeContent->Group)){{$dataTypeContent->Group}}@endif">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Sangkat</label>
                                          <select class="form-control" name="commune_id">
                                              @foreach(App\Sangkat::all() as $sangkat)
                                                  <option value="{{ $sangkat->id }}" @if(isset($dataTypeContent->commune_id) && $dataTypeContent->sangkat_id == $sangkat->id){{ 'selected="selected"' }}@endif>{{ $sangkat->name }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Khan</label>
                                          <select class="form-control" name="district_id">
                                              @foreach(App\Khan::all() as $khan)
                                                  <option value="{{ $khan->id }}" @if(isset($dataTypeContent->district_id) && $dataTypeContent->khan_id == $khan->id){{ 'selected="selected"' }}@endif>{{ $khan->name }}</option>
                                              @endforeach
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                              </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary pull-right">
                              @if(isset($dataTypeContent->id)){{ 'Update Guardian' }}@else <i class="icon wb-plus-circle"></i> Add New Guardian @endif
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
