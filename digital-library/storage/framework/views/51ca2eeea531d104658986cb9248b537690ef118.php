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

                <form action="/login" method="POST">
                <?php echo csrf_field(); ?>

                  <?php if(session('success')): ?>
                  <div class="alert alert-success" role="alert"><?php echo e(session('success')); ?></div>
                  <?php endif; ?>
                  <?php if(session('error')): ?>
                  <div class="alert alert-danger" role="alert"><?php echo e(session('error')); ?></div>
                  <?php endif; ?>
                  <h3 class="display-6 mb-20">Pribadi Depok Digital Library</h3>
                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                    <label class="form-label">Email address</label>
                    <div class="form-group d-flex">
                      <input type="text" name="email1" class="form-control form-control-lg col" value="<?php echo e(old('email')); ?>" autofocus>
                      <span>&ensp;</span>
                      <select name="email2" class="form-control form-control-lg col">
                        <option value="@pribadidepok.sch.id">@pribadidepok.sch.id</option>
                        <option value="@gmail.com">@gmail.com</option>
                      </select>
                    </div>
                    <?php $__errorArgs = ['email1'];
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

                  <div class="form-outline mb-4">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control form-control-lg">
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

                  <div class="form-outline mb-4">
                    <p class="pb-lg-2" style="color: #393f81;"><input type="checkbox" name="remember" value="true" class="mr-8"> Remember me</p>
                  </div>
                  <div class="pt-1 mb-4">
                    <button class="btn btn-outline-dark btn-lg btn-block" type="submit"><i class='bx bx-log-in' ></i> Login</button>
                  </div>
                  <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="/register"><b>Register here</b></a> or <a href="/books"><b>Login as a guest</b></a></p>
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
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

</body>

</html><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/users/login.blade.php ENDPATH**/ ?>