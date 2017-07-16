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
                            action="<?php if(isset($dataTypeContent->id)): ?><?php echo e(route('voyager.students.update', $dataTypeContent->id)); ?><?php else: ?><?php echo e(route('voyager.students.store')); ?><?php endif; ?>"
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

                                <div class="panel-heading">
                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> Student Info

                                  </h3>

                                  <div class="row container">
                                    <div class="form-group " style="margin-left: 15px;">
                                      <div class="row">
                                        <div class="col-sm-2">
                                          <label for="name">ID</label>
                                          <input type="text" id ="school_id" name="school_id" placeholder="id" class="form-control" value="<?php if(isset($dataTypeContent->school_id)): ?><?php echo e($dataTypeContent->school_id); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-4">
                                          <label for="name">Full Name</label>
                                          <input type="text" id="Fullname "name="Fullname" placeholder="Fullname" class="form-control" value="<?php if(isset($dataTypeContent->Fullname)): ?><?php echo e($dataTypeContent->Fullname); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-4">
                                          <label for="name">Date of Birth</label>
                                          <input type="date" id="DOB" name="DOB" placeholder="Date of Birth" class="form-control" value="<?php if(isset($dataTypeContent->DOB)): ?><?php echo e($dataTypeContent->DOB); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          
                                          <?php if(isset($dataTypeContent->Image)): ?>
                                              <img src="<?php echo e(Voyager::image($dataTypeContent->Image)); ?>"
                                                   style="width:100px; height:100px; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:3px; margin-left:0px">
                                          <?php endif; ?>
                                          <input  type="file" name="Image" style="margin-left:0px;">
                                        </div>
                                      </div>
                                      <div class="row">
                                        <div class="col-sm-2">
                                          <label for="name">Nationality</label>
                                          <select class="form-control" name="Nationality">
                                              <option value="Khmer" <?php if(isset($dataTypeContent->Nationality) && $dataTypeContent->Nationality == 'Khmer'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Khmer</option>
                                              
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Gender</label>
                                          <select class="form-control" name="Gender">
                                              <option value="BOY" <?php if(isset($dataTypeContent->Gender) && $dataTypeContent->Gender == 'BOY'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Boy</option>
                                              <option value="Girl" <?php if(isset($dataTypeContent->Gender) && $dataTypeContent->Gender == 'GIRL'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Girl</option>
                                          </select>
                                        </div>
                                        <div class="col-sm-6">
                                          <label for="name">Place of Birth</label>
                                          <input type="text" id="POD"name="POD" placeholder="Place of Birth" class="form-control" value="<?php if(isset($dataTypeContent->POD)): ?><?php echo e($dataTypeContent->POD); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Health</label>
                                          <select class="form-control" name="Health">
                                              <option value="Good" <?php if(isset($dataTypeContent->Health) && $dataTypeContent->Health == 'Good'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Good</option>
                                              <option value="Not Good" <?php if(isset($dataTypeContent->Health) && $dataTypeContent->Health == 'Not Good'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Not Good</option>
                                          </select>
                                        </div>
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
                                          <input type="text" id ="House" name="House" placeholder="House Number" class="form-control" value="<?php if(isset($dataTypeContent->House)): ?><?php echo e($dataTypeContent->House); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Street</label>
                                          <input type="text" id="Street "name="Street" placeholder="Stree Number" class="form-control" value="<?php if(isset($dataTypeContent->Street)): ?><?php echo e($dataTypeContent->Street); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Group</label>
                                          <input type="text" id="Group "name="Group" placeholder="Group" class="form-control" value="<?php if(isset($dataTypeContent->Group)): ?><?php echo e($dataTypeContent->Group); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Sangkat</label>
                                          <select class="form-control" name="commune_id">
                                              <?php $__currentLoopData = App\Sangkat::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sangkat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($sangkat->id); ?>" <?php if(isset($dataTypeContent->commune_id) && $dataTypeContent->sangkat_id == $sangkat->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($sangkat->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Khan</label>
                                          <select class="form-control" name="district_id">
                                              <?php $__currentLoopData = App\Khan::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $khan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($khan->id); ?>" <?php if(isset($dataTypeContent->district_id) && $dataTypeContent->khan_id == $khan->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($khan->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                    <h3 class="panel-title">
                                        <i class="voyager-people"></i> Parent
                                    </h3>
                                    <div class="row container">
                                      <div class="form-group  " style="margin-left: 15px;">
                                        <div class="row">
                                          <div class="col-sm-4">
                                            <label for="name">Father</label>
                                            <input type="text" id ="Father" name="Father" placeholder="Father Name" class="form-control" value="<?php if(isset($dataTypeContent->Father)): ?><?php echo e($dataTypeContent->Father); ?><?php endif; ?>">
                                          </div>
                                          <div class="col-sm-2">
                                            <label for="name">Father Career</label>
                                            <input type="text" id="FJob "name="FJob" placeholder="Father Career" class="form-control" value="<?php if(isset($dataTypeContent->FJob)): ?><?php echo e($dataTypeContent->FJob); ?><?php endif; ?>">
                                          </div>
                                          <div class="col-sm-4">
                                            <label for="name">Mother</label>
                                            <input type="text" id="Mother "name="Mother" placeholder="Mother Name" class="form-control" value="<?php if(isset($dataTypeContent->Mother)): ?><?php echo e($dataTypeContent->Mother); ?><?php endif; ?>">
                                          </div>
                                          <div class="col-sm-2">
                                            <label for="name">Mother Career</label>
                                            <input type="text" id="MJob"name="MJob" placeholder="Mother Career" class="form-control" value="<?php if(isset($dataTypeContent->MJob)): ?><?php echo e($dataTypeContent->MJob); ?><?php endif; ?>">
                                          </div>
                                        </div>
                                      </div>


                                  </div>

                                  <h3 class="panel-title">
                                      <i class="voyager-people"></i> School Infomation
                                  </h3>
                                  <div class="row container">
                                    <div class="form-group  " style="margin-left: 15px;">
                                      <div class="row">
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
                                          <select class="form-control" name="academic_id">
                                              <?php $__currentLoopData = App\Academic::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $academic): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($academic->id); ?>" <?php if(isset($dataTypeContent->academic_id) && $dataTypeContent->academic_id == $academic->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($academic->year); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Status</label>
                                          <select class="form-control" name="status">
                                              <option value="Studying" <?php if(isset($dataTypeContent->Status) && $dataTypeContent->Status == 'Studying'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Studying</option>
                                              <option value="Finish" <?php if(isset($dataTypeContent->Status) && $dataTypeContent->Status == 'Finish'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Finish</option>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Last Result</label>
                                          <input type="text" id="Lastyearresult"name="Lastyear_result" placeholder="Last year Result" class="form-control" value="<?php if(isset($dataTypeContent->Lastyear_result)): ?><?php echo e($dataTypeContent->Lastyear_result); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-4">
                                          <label for="name">Enroll Date</label>
                                          <input type="date" id="enroll" name="enroll_date" placeholder="enroll date" class="form-control" value="<?php if(isset($dataTypeContent->enroll_date)): ?><?php echo e($dataTypeContent->enroll_date); ?><?php endif; ?>">
                                        </div>
                                      </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary pull-right">
                              <?php if(isset($dataTypeContent->id)): ?><?php echo e('Update Student'); ?><?php else: ?> <i class="icon wb-plus-circle"></i> Add New Student <?php endif; ?>
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