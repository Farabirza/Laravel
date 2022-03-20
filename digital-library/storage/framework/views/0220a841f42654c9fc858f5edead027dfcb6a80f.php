<?php $__env->startPush('css-styles'); ?>
<style>
#section-hero { 
  background: url("<?php echo e(asset('img/bg/bg_trans-80.png')); ?>") repeat, url("<?php echo e(asset('img/hero-bg.jpg')); ?>") top center fixed; 
  padding: 100px 0;
  color: #f1f1f1;
}
#section-hero h1 { font-size: 42pt; text-transform: uppercase; letter-spacing: 1px; }
#section-hero .btn-register { 
    width: 100%;
    border: 1px solid #f1f1f1; 
    margin: 10px;
    text-transform: uppercase;
    color: #f1f1f1;
}
#section-hero .btn-register:hover { 
    border: #f1f1f1;
    background: #f1f1f1;
    color: #202020;
}
@media (max-width: 768px) {
    #section-hero { display: none; transition: .2s; }
}
</style>
<?php $__env->stopPush(); ?>

<!-- section index-hero -->
<section id="section-hero" class="bg-light">
  <div class="container">
    <div id="hero-index" class="row justify-content-center align-center"> <!-- row start -->
      <div class="col-md-10 mb-20 align-center">
        <p><b>Pribadi Bilingual Boarding School</b> | Digital Library</p>
        <h1>it seems you are not authenticated yet</h1>
      </div>
      <div class="col-md-6 d-flex mb-40">
        <a href="/register" class="btn btn-register">Register now</a>
        <a href="/login" class="btn btn-register">Login</a>
      </div>
      <p style="color:#ddd;font-size:11pt;">*You won't be able to access any book unless you loged in to a verified account</p>
    </div> <!-- row end -->
  </div>
</section>
<!-- section index-hero end -->

<?php $__env->startPush('script'); ?>
<script>
</script>
<?php $__env->stopPush(); ?><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/layouts/partials/hero_register.blade.php ENDPATH**/ ?>