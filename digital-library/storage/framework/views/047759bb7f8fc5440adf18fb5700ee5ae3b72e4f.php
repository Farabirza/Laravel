

<?php $__env->startPush('css-styles'); ?>
<style>
.form-group label { color: var(--second-color); font-size: 11pt; font-weight: 500; }
</style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

<!-- section-create -->
<div id="section-create" class="ptb-60 prl-20">
	<div class="container">
		<div class="row content">
            <div class="page-subtitle col-md-12 mb-20">
                <h3>Edit Book Details</h3>
            </div>

        </div> <!-- row end -->
        <div class="row content vertical-center justify-content-center">

            <div class="col-md-4 prl-20">
                <form role="form" action="/books/<?php echo e($books->id); ?>" enctype="multipart/form-data" method="POST">
                <?php echo csrf_field(); ?>
                <?php echo method_field('PUT'); ?>
                <input type="hidden" name="user_id" value="1">
                <input type="hidden" name="old_cover" value="<?php echo e($books->cover); ?>">
                <input type="hidden" name="upload_date" value="<?= date('Y-m-d'); ?>">
                <img id="img_preview" class="mb-40 box-shadow-1" src="<?php echo e(asset('img/covers/'.$books->cover)); ?>">
                <input class="form-control form-input mb-20" type="file" name="cover" id="input_img">
                <img id="img_preview" src="">
            </div> <!-- Form left end -->

            <div class="col-md-6 prl-20">
                <!-- form start -->
                    <p class="mb-20"><?= date("l, d-M-Y"); ?></p>
                    <div class="form-group"> <!-- title -->
                        <label>Title</label>
                        <input name="title" type="name" class="form-control" placeholder="Title" value="<?php echo e($books->title); ?>">
                        <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group"> <!-- authors -->
                        <label>Authors</label>
                        <input name="authors" type="text" class="form-control" placeholder="Authors" value="<?php echo e($books->authors); ?>">
                        <?php $__errorArgs = ['author'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group"> <!-- publisher -->
                        <label>Publisher</label>
                        <input name="publisher" type="text" class="form-control" placeholder="Publisher" value="<?php echo e($books->publisher); ?>">
                        <?php $__errorArgs = ['publisher'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group"> <!-- publication year -->
                        <label>Publication Year</label>
                        <input name="publication_year" type="text" class="form-control" placeholder="Publication Year" value="<?php echo e($books->publication_year); ?>">
                        <?php $__errorArgs = ['publisher'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group"> <!-- ISBN -->
                        <label>ISBN</label>
                        <input name="isbn" type="text" class="form-control" placeholder="ISBN" value="<?php echo e($books->isbn); ?>">
                        <?php $__errorArgs = ['publisher'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group"> <!-- description -->
                        <label>Description</label>
                        <textarea name="description" class="form-control" placeholder="Description"><?php echo e($books->description); ?></textarea>
                        <?php $__errorArgs = ['description'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group mb-40"> <!-- url -->
                        <label>URL</label>
                        <input name="url" type="text" class="form-control" placeholder="Url" value="<?php echo e($books->url); ?>">
                        <?php $__errorArgs = ['url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="alert alert-danger"><?php echo e($message); ?></div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary"><i class='bx bx-edit-alt'></i> Update</button>
                    </div>

                </form> <!-- form end -->
            </div> <!-- Form right end -->

        </div> <!-- row end -->

		</div>
	</div>
</div>
<!-- end of section-create -->

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script type="text/javascript">

$(document).ready(function (e) {
    $('#input_img').change(function(){
        let reader = new FileReader();
        reader.onload = (e) => { 
            $('#img_preview').attr('src', e.target.result); 
        }
        reader.readAsDataURL(this.files[0]); 
    }); 
});
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/books/edit.blade.php ENDPATH**/ ?>