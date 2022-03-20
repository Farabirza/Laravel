

<?php $__env->startPush('css-styles'); ?>
<style>
</style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

<?php if(auth()->guard()->guest()): ?>
<!-- section hero register -->
<?php echo $__env->make('layouts.partials.hero_register', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- section hero register end -->
<?php endif; ?>

<?php if(auth()->guard()->check()): ?>
<section class="bg-light">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-2 mb-20">
        <img src="<?php echo e(asset('/img/icons/male.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
      </div>
      <h1 class="align-center">Welcome, <?php echo e(Auth::user()->profile->first_name); ?> <?php echo e(Auth::user()->profile->last_name); ?></h1> 
    </div>
  </div>
</section>
<?php endif; ?>

<!-- ======= section book thumbnails ======= -->
<section id="section-thumbnails">
  <div class="container">

    <div class="row content"> <!-- row start -->
      <!-- search start -->
      <div class="thumbnails-search col-md-12">
        <form action="/books" method="get" class="row">
        <?php echo csrf_field(); ?>
          <div class="col-md-10 prl-1 mb-10">
              <input class="form-control form-input" type="text" name="keyword" placeholder="Search for book's title, category, or author's name" autocomplete="off" id="keyword" value="<?php echo e($keyword); ?>">
          </div>
          <div class="col-md-2 prl-1"><button class="submit form-control form-input" type="submit" value="" id="btn_search">Search</button></div>
        </form>
      </div>
      <!-- search end -->
      
      <!-- thumbanils-items start -->
      <div class="thumbnails-items col-md-12 row mrl-0">

        <?php $__empty_1 = true; $__currentLoopData = $books; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $book): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
        <div class="book-item col-md-3"> <!-- item -->
          <div class="card">
            <a href="<?php echo e(asset('img/covers/'.$book->cover)); ?>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="<?php echo e($book->title); ?>">
              <img src="<?php echo e(asset('img/covers/'.$book->cover)); ?>" class="book-cover">
            </a>
            <div class="card-body">
              <h5 class="book-title"><?php echo e($book->title); ?></h5>
              <p class="book-data">
                <span><?php echo e($book->authors); ?></span> |
                <span><?php echo e($book->publisher); ?></span>
              </p>
              <a href="/books/<?php echo e($book->id); ?>"><button class="book-btn btn btn-sm btn-outline-secondary"><i class='bx bx-detail' ></i> Details</button></a>
              <?php if(auth()->guard()->check()): ?>
              <a href="/redirect/<?php echo e($book->id); ?>" class="warn-visit" target="_blank"><button class="book-btn btn btn-sm btn-outline-primary"><i class='bx bx-book-open'></i> Read</button></a>
              <?php endif; ?>
            </div>
          </div>
        </div> <!-- item end -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
        <div class="col-md-12 align-center">
          <p>Database empty</p>
        </div>
        <?php endif; ?>

      </div>
      <!-- thumbanils-items end -->


      <!-- thumbanils-pagination start -->
      <div class="thumbnails-pagination col-md-12 d-flex justify-content-center">
      <?php echo e($books->onEachSide(3)->links()); ?>

      </div>
      <!-- thumbanils-pagination end -->

    </div> <!-- row end -->
  </div>
</section>
<!-- ======= section book thumbnails end ======= -->


<!-- ======= section-most_visited start ======= -->
<section id="section-most_visited">
  <div class="container">
    <div class="row content"> <!-- row start -->
      <div class="page-subtitle col-md-12 mb-20">
        <h3>Most Visited Books This Week</h3>
      </div>
      <div class="col-md-12 row mrl-0">

      <?php $__empty_1 = true; $__currentLoopData = $most_visited; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $book): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
        <div class="book-item col-20"> <!-- item start -->
          <div class="card">
            <a href="<?php echo e(asset('/img/covers/'.$book['cover'])); ?>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Book Title">
              <img src="<?php echo e(asset('/img/covers/'.$book['cover'])); ?>" class="book-cover">
            </a>
            <div class="card-body">
              <h5 class="book-title mb-15"><?php echo e($book['title']); ?></h5>
              <a href="/books/<?php echo e($book['id']); ?>" class="btn btn-sm btn-outline-secondary mr-4"><i class='bx bx-detail' ></i> Details</a>
              <?php if(auth()->guard()->check()): ?>
              <a href="/redirect/<?php echo e($book['id']); ?>" class="btn warn-visit btn-sm btn-outline-primary"><i class='bx bx-book-open'></i> Read</a>
              <?php endif; ?>
            </div>
          </div>
        </div> <!-- item end -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
      <?php endif; ?>

      </div>
    </div>
  </div>
</section>
<!-- ======= section-most_visited end ======= -->

<!-- ======= section-reviews start ======= -->
<section id="section-reviews" class="ptb-0">
    
    <div id="carouselReviewsIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">

        <div class="carousel-item active"> <!-- item start -->
          <img src="<?php echo e(asset('/img/icons/male.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
					<p class="review-username">Username</p>
          <div class="carousel-content">
            <h5><span class="review-title">Book Title</span> by <span class="book-authors">Authors</span></h5>
            <p class="review">" Quisque sit amet dapibus tellus, ornare vestibulum odio. Vestibulum scelerisque enim sit amet ligula tristique porta. Fusce efficitur eros nec nisi convallis, quis tristique neque tristique. "</p>
          </div>
        </div> <!-- item end -->

        <div class="carousel-item"> <!-- item start -->
          <img src="<?php echo e(asset('/img/icons/female.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
          <p class="review-username">Username</p>
          <div class="carousel-content">
            <h5><span class="review-title">Book Title</span> by <span class="book-authors">Authors</span></h5>
            <p class="review">" Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend facilisis placerat. Pellentesque ex nisi, rutrum id justo vitae, fringilla porttitor mauris. "</p>
          </div>
        </div> <!-- item end -->

        <div class="carousel-item"> <!-- item start -->
          <img src="<?php echo e(asset('/img/icons/male.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
          <p class="review-username">Username</p>
          <div class="carousel-content">
            <h5><span class="review-title">Book Title</span> by <span class="book-authors">Authors</span></h5>
            <p class="review">" Vestibulum scelerisque enim sit amet ligula tristique porta. Fusce efficitur eros nec nisi convallis, quis tristique neque tristique. "</p>
          </div>
        </div> <!-- item end -->

      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselReviewsIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselReviewsIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

</section>
<!-- ======= section-reviews end ======= -->

<!-- section-submit -->
<div id="section-submit" class="ptb-60 prl-20">
	<div class="container">
		<div class="row">
			<div class="col-md-6 align-center">
				<img src="<?php echo e(asset('/img/materials/books.png')); ?>" class="submit-img">
			</div>
			<div class="col-md-6 vertical-center">
				<div class="col-md-12">
					<h1 class="display-4">With books we travel across time and space</h1>
					<p>Consider contributing your own collection to help us expand our repository.</p>
					<a href="/books/create"><button class="btn btn-outline-1 form-control form-input mb-15" name="" value=""><i class='bx bx-upload' ></i> Submit book</button></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end of section-submit -->

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script type="text/javascript">
$(document).ready(function(){
  // $(window).resize(function() {
  //   if($(window).width() < 768) {
  //     $('#section-hero').css('display','none');
  //   } else {
  //     $('#section-hero').css('display','block');
  //   }
  // });
});
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/books/index.blade.php ENDPATH**/ ?>