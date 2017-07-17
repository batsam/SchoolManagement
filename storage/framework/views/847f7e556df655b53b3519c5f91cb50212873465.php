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
                            action="<?php if(isset($dataTypeContent->id)): ?><?php echo e(route('voyager.employees.update', $dataTypeContent->id)); ?><?php else: ?><?php echo e(route('voyager.employees.store')); ?><?php endif; ?>"
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
                                      <i class="voyager-people"></i> Guardian Info

                                  </h3>

                                  <div class="row container">
                                    <div class="form-group " style="margin-left: 15px;">
                                      <div class="row">
                                        <div class="col-sm-2">
                                          <label for="name">Title</label>
                                          <select class="form-control" name="Title">
                                              <option value="Mr" <?php if(isset($dataTypeContent->Title) && $dataTypeContent->Title == 'Mrs'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Mr</option>
                                              <option value="Mrs" <?php if(isset($dataTypeContent->Title) && $dataTypeContent->Title == 'Mrs'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Mrs</option>
                                          </select>
                                        </div>
                                        <div class="col-sm-4">
                                          <label for="name">Full Name</label>
                                          <input type="text" id="Fullname "name="Fullname" placeholder="Fullname" class="form-control" value="<?php if(isset($dataTypeContent->Fullname)): ?><?php echo e($dataTypeContent->Fullname); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">DOB</label>
                                          <input type="date" name="DOB" value="<?php if(isset($dataTypeContent->DOB)): ?><?php echo e($dataTypeContent->DOB); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Position</label>
                                          <select class="form-control" name="position">
                                              <option value="Teacher" <?php if(isset($dataTypeContent->position) && $dataTypeContent->position == 'Teacher'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Teacher</option>
                                              <option value="Office Staff" <?php if(isset($dataTypeContent->position) && $dataTypeContent->position == 'Office Staff'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Office Staff</option>
                                              <option value="Director" <?php if(isset($dataTypeContent->position) && $dataTypeContent->position == 'Director'): ?><?php echo e('selected="selected"'); ?><?php endif; ?>>Director</option>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Image</label>
                                            <?php if(isset($dataTypeContent->Image)): ?>
                                                <img src="<?php echo e(Voyager::image($dataTypeContent->Image)); ?>"
                                                     style="width:100px; height:100px; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:3px; margin-left:0px">
                                            <?php endif; ?>
                                            <input type="file" name="Image" style="margin-left:0px">
                                        </div>
                                      </div>
                                      <div class="row">
                                        <div class="col-sm-2">
                                          <label for="name">Phone</label>
                                          <input type="text" id="Phone" name="Phone" placeholder=" Phone" class="form-control" value="<?php if(isset($dataTypeContent->Phone)): ?><?php echo e($dataTypeContent->Phone); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">POB</label>
                                          <input type="text" name="PO" class="form-control" value="<?php if(isset($dataTypeContent->PO)): ?><?php echo e($dataTypeContent->PO); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Work Date</label>
                                          <input type="date" name="Workdate" class="form-control" value="<?php if(isset($dataTypeContent->Workdate)): ?><?php echo e($dataTypeContent->Workdate); ?><?php endif; ?>">
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
                                          <input type="text" name="Grup" placeholder="Group" class="form-control" value="<?php if(isset($dataTypeContent->Grup)): ?><?php echo e($dataTypeContent->Grup); ?><?php endif; ?>">
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Sangkat</label>
                                          <select class="form-control" name="sangkat_id">
                                              <?php $__currentLoopData = App\Sangkat::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sangkat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($sangkat->id); ?>" <?php if(isset($dataTypeContent->sangkat_id) && $dataTypeContent->sangkat_id == $sangkat->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($sangkat->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-2">
                                          <label for="name">Khan</label>
                                          <select class="form-control" name="khan_id">
                                              <?php $__currentLoopData = App\Khan::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $khan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option value="<?php echo e($khan->id); ?>" <?php if(isset($dataTypeContent->khan_id) && $dataTypeContent->khan_id == $khan->id): ?><?php echo e('selected="selected"'); ?><?php endif; ?>><?php echo e($khan->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                              </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary pull-right">
                              <?php if(isset($dataTypeContent->id)): ?><?php echo e('Update Guardian'); ?><?php else: ?> <i class="icon wb-plus-circle"></i> Add New Guardian <?php endif; ?>
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