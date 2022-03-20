

<?php $__env->startPush('css-styles'); ?>
<style>
.book-attr span { color: var(--second-color); font-size: 11pt; font-weight: 500; }
p { font-size: 12pt; }
</style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

<!-- Section-details -->
<section id="section-details">
    <div class="container">
        <div class="row content justify-content-center vertical-center mb-60">
            <div class="page-subtitle col-md-12 mb-20">
                <h3><?php echo e($page_title); ?></h3>
            </div>
            <div class="col-md-5 prl-20">
                <img class="box-shadow-1 portfolio-lightbox" data-gallery="portfolioGallery" src="<?php echo e(asset('img/covers/'.$books->cover)); ?>">
            </div>
            <div class="col-md-5 prl-20 book-attr">
                <h3 class="mb-20"><?php echo e($books->title); ?></h3>
                <span>Authors</span>
                <p><?php echo e($books->authors); ?></p>
                <span>Publisher</span>
                <p><?php echo e($books->publisher); ?></p>
                <span>Publication Year</span>
                <p><?php echo e($books->publication_year); ?></p>
                <span>ISBN</span>
                <p><?php echo e($books->isbn); ?></p>
                <span>Description</span>
                <p><?php echo e($books->isbn); ?></p>
                <span>Uploaded by</span>
                <p><b><?php echo e($books->user->email); ?></b> at <?php echo e(date('l, Y-m-d', strtotime($books->created_at))); ?></p>
                <?php if(auth()->guard()->check()): ?>
                <div class="dflex mb-15">
                    <a class="btn warn-visit btn-small btn-outline-primary mr-8" href="/redirect/<?php echo e($books->id); ?>"><i class='bx bx-book-reader' ></i> Read</a>
                    <?php if(Auth::user()->role == 'admin'): ?>
                    <a class="btn btn-small btn-outline-success mr-8" href="/books/<?php echo e($books->id); ?>/edit"><i class='bx bx-edit-alt'></i> Edit</a>
                    <form action="/books/<?php echo e($books->id); ?>" method="POST" class="btn warn-delete padd-0">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('DELETE'); ?>
                        <button class="btn btn-small btn-outline-danger mr-8" role="submit" type="submit"><i class='bx bx-trash'></i> Delete</button>
                    </form>
                    <?php endif; ?>
                </div>
                <?php endif; ?>
            </div>
        </div> <!-- end row -->
        <div class="row content justify-content-center">
            <div class="col-md-12">
                <table id="visitorTable" class="table">
                    <thead>
                        <tr>
                            <th>Visitor</th>
                            <th>Visited at</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__empty_1 = true; $__currentLoopData = $records; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $record): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <tr>
                            <td><?php echo e($record->user->email); ?></td>
                            <td><?php echo e(date('l, Y-m-d | h:i A', strtotime($record->created_at))); ?></td>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <td colspan="2" class="align-center">No activity on this book yet</td>
                        </tr> 
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div> <!-- end row -->
    </div>
</section>
<!-- Section-details end -->

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script type="text/javascript">
$(document).ready(function(){
  $('#visitorTable').DataTable();
}
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/books/show.blade.php ENDPATH**/ ?>