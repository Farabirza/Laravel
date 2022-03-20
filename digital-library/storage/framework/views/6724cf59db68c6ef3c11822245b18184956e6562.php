<!-- Check wether this user is authenticated -->
<?php if(auth()->guard()->check()): ?>
<?php header("Location: /books"); die(); ?>
<?php endif; ?>
<!-- Check wether this user is authenticated -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Vendor JS Files -->
  <script src="<?php echo e(asset('/vendor/jquery/jquery-3.6.0.min.js')); ?>"></script>

  <!-- Favicons -->
  <link href="<?php echo e(asset('/img/logo/logo_book_small.png')); ?>" rel="icon">
  <link href="<?php echo e(asset('/img/logo/logo_book.png')); ?>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo e(asset('/vendor/aos/aos.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/bootstrap/css/bootstrap.min.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/bootstrap-icons/bootstrap-icons.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/boxicons/css/boxicons.min.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/glightbox/css/glightbox.min.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/swiper/swiper-bundle.min.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('/vendor/sweetalert2/sweetalert2.min.css')); ?>" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="<?php echo e(asset('/css/style.css')); ?>" rel="stylesheet">

<style>
    img { height: 100%; width: 100%; border-radius: 1rem 0 0 1rem; }
    body { background: url("<?php echo e(asset('img/bg/bg_trans-60.png')); ?>") repeat, url("<?php echo e(asset('img/hero-bg.jpg')); ?>"); background-size: cover; }
    #img-front { overflow: hidden; }
    #select-grade, #occupation-whitespace { display: none; }
  
</style>

<title>Digital Library | <?php echo e($page_title); ?></title>

</head>
<body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div id="img-front" class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="<?php echo e(asset('img/hero-bg.jpg')); ?>" alt="login form">
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <h3 class="display-6 mb-20">Pribadi Depok Digital Library</h3>
                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign up new account</h5>

                <form action="/register" method="POST">
                  <?php echo csrf_field(); ?>

                  <div class="form-group mb-3 d-flex">
                    <input type="text" class="form-control col" name="email" placeholder="Email Address" value="<?php echo e(old('email')); ?>">
                    <span>&ensp;</span>
                    <select name="email2" class="form-control col">
                      <option value="@pribadidepok.sch.id">@pribadidepok.sch.id</option>
                      <option value="@gmail.com">@gmail.com</option>
                    </select>
                  </div>
                  <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <div class="alert alert-danger"><?php echo e($message); ?></div>
                  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                  <div class="form-group mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password"><br>
                    <input type="password" class="form-control" name="re-password" placeholder="Confirm Password">
                    <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <br><div class="alert alert-danger"><?php echo e($message); ?></div>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                  </div>

                  <div class="form-group mb-3 d-flex">
                    <input type="name" class="form-control col" name="first_name" placeholder="First Name" value="<?php echo e(old('first_name')); ?>">
                    <span>&ensp;</span>
                    <input type="name" class="form-control col" name="last_name" placeholder="Last Name" value="<?php echo e(old('last_name')); ?>">
                  </div>
                  <?php $__errorArgs = ['first_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <div class="alert alert-danger"><?php echo e($message); ?></div>
                  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                  <?php $__errorArgs = ['last_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <div class="alert alert-danger"><?php echo e($message); ?></div>
                  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                  <div class="form-group mb-3">
                    <select name="gender" class="form-control">
                      <option value="select" selected disabled hidden>Select Gender</option>
                      <option value="male">Male</option>
                      <option value="female">Female</option>
                    </select>
                    <?php $__errorArgs = ['gender'];
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

                  <div class="form-group mb-3 d-flex">
                    <select id="select-occupation" name="occupation" class="form-control">
                      <option value="select" selected disabled hidden>Select Occupation</option>
                      <option id="student" value="student">Student</option>
                      <option id="teacher" value="teacher">Teacher</option>
                      <option id="management" value="management">Management</option>
                      <option id="staff" value="staff">Staff</option>
                      <option id="other" value="other">Other</option>
                    </select>
                    <span id="occupation-whitespace">&ensp;</span>
                    <select id="select-grade" name="grade" class="form-control">
                      <option value="select" selected disabled hidden>Select Grade</option>
                      <option value="1">Grade 1 Elementary</option>
                      <option value="2">Grade 2 Elementary</option>
                      <option value="3">Grade 3 Elementary</option>
                      <option value="4">Grade 4 Elementary</option>
                      <option value="5">Grade 5 Elementary</option>
                      <option value="6">Grade 6 Elementary</option>
                      <option value="7">Grade 7 Middle School</option>
                      <option value="8">Grade 8 Middle School</option>
                      <option value="9">Grade 9 Middle School</option>
                      <option value="10">Grade 10 High School</option>
                      <option value="11">Grade 11 High School</option>
                      <option value="12">Grade 12 High School</option>
                    </select>
                  </div>
                  <?php $__errorArgs = ['occupation'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <div class="alert alert-danger"><?php echo e($message); ?></div>
                  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                  <div class="pt-1 mb-3">
                    <button class="btn btn-outline-primary mr-8" type="submit"><i class='bx bx-user' ></i> Register</button>&ensp;
                    <a class="btn btn-outline-danger" href="/login" type="button"><i class='bx bx-arrow-back' ></i> Back to Login Page</a>
                  </div>

                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Vendor JS Files -->
<script src="<?php echo e(asset('/vendor/purecounter/purecounter.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/aos/aos.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/glightbox/js/glightbox.min.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/isotope-layout/isotope.pkgd.min.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/swiper/swiper-bundle.min.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/typed.js')); ?>/typed.min.js') }}"></script>
<script src="<?php echo e(asset('/vendor/waypoints/noframework.waypoints.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/php-email-form/validate.js')); ?>"></script>
<script src="<?php echo e(asset('/vendor/sweetalert2/sweetalert2.all.min.js')); ?>"></script>

<!-- Template Main JS File -->
<script src="<?php echo e(asset('/js/main.js')); ?>"></script>
<script>
$(document).ready(function(){
  const select_occupation = document.getElementById('select-occupation');

  const select_grade = $('#select-grade');
  const whitespace = $('#occupation-whitespace');

  select_occupation.addEventListener('change', function handleChange(event) {
    if (event.target.value === 'student') {
      select_grade.css('display', 'block');
      whitespace.css('display', 'block');
    } else {
      select_grade.css('display', 'none');
      whitespace.css('display', 'none');
    }
  });

});

</script>

</body>

</html><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/users/register.blade.php ENDPATH**/ ?>