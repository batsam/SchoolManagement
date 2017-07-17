<input type="date" class="form-control" name="<?php echo e($row->field); ?>"
       placeholder="<?php echo e($row->display_name); ?>"
       value="<?php if(isset($dataTypeContent->{$row->field})): ?><?php echo e(gmdate('Y-m-d', strtotime(old($row->field, $dataTypeContent->{$row->field})))); ?><?php else: ?><?php echo e(old($row->field)); ?><?php endif; ?>"
       <?php if(isset($options->datepicker)): ?>data-datepicker="<?php echo htmlentities(json_encode($options->datepicker), ENT_QUOTES, 'UTF-8'); ?>"<?php endif; ?>>
