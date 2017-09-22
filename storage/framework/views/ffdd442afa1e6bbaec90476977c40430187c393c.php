<?php $__env->startSection('css'); ?>
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
<?php $__env->stopSection(); ?>

<?php if(isset($dataTypeContent->id)): ?>
    <?php $__env->startSection('page_title','Edit '.$dataType->display_name_singular); ?>
<?php else: ?>
    <?php $__env->startSection('page_title','Add '.$dataType->display_name_singular); ?>
<?php endif; ?>

<?php $__env->startSection('page_header'); ?>
    <h1 class="page-title">
        <i class="<?php echo e($dataType->icon); ?>"></i> <?php if(isset($dataTypeContent->id)): ?><?php echo e('Edit'); ?><?php else: ?><?php echo e('New'); ?><?php endif; ?> <?php echo e($dataType->display_name_singular); ?>

    </h1>
    <?php echo $__env->make('voyager::multilingual.language-selector', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
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
                        <h3 class="panel-title"><?php if(isset($dataTypeContent->id)): ?><?php echo e('Edit'); ?><?php else: ?><?php echo e('Add New'); ?><?php endif; ?> <?php echo e($dataType->display_name_singular); ?></h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form-inline"
                            class="form-edit-add"
                            action="<?php if(isset($dataTypeContent->id)): ?><?php echo e(route('voyager.absences.update', $dataTypeContent->id)); ?><?php else: ?><?php echo e(route('voyager.absences.store')); ?><?php endif; ?>"
                            method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        <?php if(isset($dataTypeContent->id)): ?>
                            <?php echo e(method_field("PUT")); ?>

                        <?php endif; ?>

                        <!-- CSRF TOKEN -->
                        <?php echo e(csrf_field()); ?>


                        <div class="row ">
                            <div class="col-md-12">
                              
                              <div class="panel">
                                <?php if(count($errors) > 0): ?>
                                    <div class="alert alert-danger">
                                        <ul>
                                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li><?php echo e($error); ?></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    </div>
                                <?php endif; ?>

                                <div class="panel-heading  col-md-offset-1">

                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> Absences
                                  </h3>
                                  <div class="row container">
                                    <div class="form-group  " style="margin-left: 15px;">
                                      <div class="row">
                                        <div class="col-sm-2 ">
                                          <label for="name">Student</label>
                                          <select class="form-control select2 " name="student_id" autofocus  >
                                              <?php $__currentLoopData = App\Student::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($student->id); ?>" <?php if(isset($dataTypeContent->student_id) && $dataTypeContent->student_id == $student->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($student->Fullname); ?><?php echo e(' '); ?><?php echo e($student->id); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Class</label>
                                          <select class="form-control" name="class_id">
                                              <?php $__currentLoopData = App\Room::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $room): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($room->id); ?>" <?php if(isset($dataTypeContent->class_id) && $dataTypeContent->class_id == $room->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($room->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Academic</label>
                                          <select class="form-control" name="acadamic_id">
                                              <?php $__currentLoopData = App\Academic::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $academic): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($academic->id); ?>" <?php if(isset($dataTypeContent->acadamic_id) && $dataTypeContent->acadamic_id == $academic->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($academic->year); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>

                                        <div class="col-sm-2">
                                          <label for="name">Month</label>
                                          <select class="form-control select2"name="Month">
                                                  <option value="January"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'January'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>January</option>
                                                  <option value="February"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'February'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>February</option>
                                                  <option value="March"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'March'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>March</option>
                                                  <option value="April"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'April'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>April</option>
                                                  <option value="May"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'May'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>May</option>
                                                  <option value="June"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'June'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>June</option>
                                                  <option value="July"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'July'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>July</option>
                                                  <option value="August"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'August'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>August</option>
                                                  <option value="September"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'September'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>September</option>
                                                  <option value="October"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'October'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>October</option>
                                                  <option value="November"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'November'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>November</option>
                                                  <option value="December"<?php if(isset($dataTypeContent->Month)&& $dataTypeContent->Month == 'December'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>December</option>
                                               </select>                                         </div>
                                        <div class="col-sm-2">
                                          <label for="name">Permission</label>
                                          <input type="number" name="Permission" min="0" max="30" class="form-control" placeholder="Permission" value="<?php if(isset($dataTypeContent->Permission)): ?><?php echo e($dataTypeContent->Permission); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2" >
                                          <label for="name">Non-Permission</label>
                                          <input type="number" name="Non_permission" min="0" max="30" class="form-control" placeholder="Non Permission" value="<?php if(isset($dataTypeContent->Non_permission)): ?><?php echo e($dataTypeContent->Non_permission); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2" style="float:right;">
                                          <label for="name">Total</label>
                                          <input type="number" name="Total" min="0" max="30" class="form-control" placeholder="Total" value="<?php if(isset($dataTypeContent->Total)): ?><?php echo e($dataTypeContent->Total); ?><?php endif; ?>">
                                        </div>

                                      </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary pull-right">
                              <?php if(isset($dataTypeContent->id)): ?><?php echo e('Update Score'); ?><?php else: ?> <i class="icon wb-plus-circle"></i> Add Student Score <?php endif; ?>
                            </button>
                        </div>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="<?php echo e(route('voyager.upload')); ?>" target="form_target" method="post"
                            enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                        <input name="image" id="upload_file" type="file"
                                 onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="<?php echo e($dataType->slug); ?>">
                        <?php echo e(csrf_field()); ?>

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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
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

            <?php if($isModelTranslatable): ?>
                $('.side-body').multilingual({"editing": true});
            <?php endif; ?>

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', function (e) {
                $image = $(this).siblings('img');

                params = {
                    slug:   '<?php echo e($dataTypeContent->getTable()); ?>',
                    image:  $image.data('image'),
                    id:     $image.data('id'),
                    field:  $image.parent().data('field-name'),
                    _token: '<?php echo e(csrf_token()); ?>'
                }

                $('.confirm_delete_name').text($image.data('image'));
                $('#confirm_delete_modal').modal('show');
            });

            $('#confirm_delete').on('click', function(){
                $.post('<?php echo e(route('voyager.media.remove')); ?>', params, function (response) {
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
    <?php if($isModelTranslatable): ?>
        <script src="<?php echo e(voyager_asset('js/multilingual.js')); ?>"></script>
    <?php endif; ?>
    <script src="<?php echo e(voyager_asset('lib/js/tinymce/tinymce.min.js')); ?>"></script>
    <script src="<?php echo e(voyager_asset('js/voyager_tinymce.js')); ?>"></script>
    <script src="<?php echo e(voyager_asset('lib/js/ace/ace.js')); ?>"></script>
    <script src="<?php echo e(voyager_asset('js/voyager_ace_editor.js')); ?>"></script>
    <script src="<?php echo e(voyager_asset('js/slugify.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>