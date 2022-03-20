<!-- Check wether this user is an admin -->
<?php if(Auth::user()->role != 'admin'): ?>
<?php header("Location: /books"); die(); ?>
<?php endif; ?>
<!-- Check wether this user is an admin -->



<?php $__env->startPush('css-styles'); ?>
<style>
body { overflow-x: auto; }
label { margin-bottom: 10px; }
.card-count { text-align: center; margin: 10px; }
.card-count .purecounter { font-size: 42pt; color: #3085d6; }
@media (max-width: 768px) {
    .media-hide {
        display: none;
    }
    table { font-size: 11pt; }
    .card-count, .card-count .purecounter { font-size: 11pt; }
}
</style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

<!-- section-users -->
<section id="section-users">
    <div class="container">
        <div class="row content justify-content-center">
            <div class="page-subtitle col-md-12 mb-20">
                <h3>Users Data</h3>
            </div>
 
            <!-- user table -->
            <div class="col-md-12 mb-40">
                <table id="usersTable" class="table table-striped">
                    <thead>
                        <tr>
                            <th class="media-hide">Name</th>
                            <th>Email</th>
                            <th class="media-hide">Occupation</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="media-hide"><?php if($user->profile): ?> <?php echo e($user->profile->first_name); ?> <?php echo e($user->profile->last_name); ?> <?php endif; ?></td>
                            <td><?php echo e($user->email); ?></td>
                            <td class="media-hide">
                                <?php if($user->profile): ?> <?php echo e($user->profile->occupation); ?> <?php endif; ?>
                                <?php if($user->profile->occupation == 'student'): ?> Grade <?php echo e($user->profile->grade); ?> <?php endif; ?>
                            </td>
                            <td><?php echo e($user->role); ?></td>
                            <td class="d-flex">
                                <?php if( $user->role === 'admin'): ?>
                                <a href="/role/<?php echo e($user->id); ?>" class="btn warn-role btn-primary btn-sm mr-4"><i class='bx bx-user'></i> Change role</a>
                                <?php else: ?>
                                <a href="/role/<?php echo e($user->id); ?>" class="btn warn-role btn-outline-primary btn-sm mr-4"><i class='bx bx-user'></i> Change role</a>
                                <?php endif; ?>
                                <a href="#" class="btn btn-success btn-sm mr-4"><i class='bx bx-file' ></i> Profile</a>
                                <?php if( $user->role === 'user'): ?>
                                <a href="/delete_user/<?php echo e($user->id); ?>" class="btn warn-delete_user btn-danger btn-sm mr-4"><i class='bx bx-trash' ></i> Delete</a>
                                <?php endif; ?>
                            </td>
                        </tr> 
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
            <!-- user table end -->

            <!-- user data -->
            <div class="col-md-12 users_count d-flex"> <!-- based on occupation -->
                <div class="card card-count col">
                    <div class="card-header">Student</div>
                    <div class="card-body align-center">
                        <p><span data-purecounter-start="0" data-purecounter-end="<?php echo e($count_student); ?>" class="purecounter">0</span></p>
                    </div>
                </div>
                <div class="card card-count col">
                    <div class="card-header">Teacher</div>
                    <div class="card-body align-center">
                        <p><span data-purecounter-start="0" data-purecounter-end="<?php echo e($count_teacher); ?>" class="purecounter">0</span></p>
                    </div>
                </div>
                <div class="card card-count col">
                    <div class="card-header">Staff</div>
                    <div class="card-body align-center">
                        <p><span data-purecounter-start="0" data-purecounter-end="<?php echo e($count_staff); ?>" class="purecounter">0</span></p>
                    </div>
                </div>
            </div>
            <!-- user data end -->

        </div>
    </div>
</section>
<!-- section-users end -->

<!-- section-books -->
<section id="section-books" class="bg-light">
    <div class="container">
        <div class="row content justify-content-center">
            <div class="page-subtitle col-md-12 mb-20">
                <h3>Books Data</h3>
            </div>
            <div class="col-md-12">
                <table id="booksTable" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th class="media-hide">Uploader</th>
                            <th class="media-hide">Uploaded at</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $books; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $book): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($book->title); ?></td>
                            <td class="media-hide"><?php echo e($book->user->email); ?></td>
                            <td class="media-hide"><?php echo e(date('l, Y-m-d', strtotime($book->created_at))); ?></td>
                            <td class="d-flex">
                                <a href="/books/<?php echo e($book->id); ?>" class="btn btn-success btn-sm mr-4" target="_blank"><i class='bx bx-file' ></i> Details</a>
                            </td>
                        </tr> 
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!-- section-books end -->

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script type="text/javascript">
$(document).ready(function(){
  $('#usersTable').DataTable();
  $('#booksTable').DataTable();
  $('.nav-link').removeClass('active');
  $('#link-dashboard').addClass('active');
  if($('#main').css('width') <= '768px') {
    // $(".users_count").removeClass('d-flex');
  }
});
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/dashboard/index.blade.php ENDPATH**/ ?>