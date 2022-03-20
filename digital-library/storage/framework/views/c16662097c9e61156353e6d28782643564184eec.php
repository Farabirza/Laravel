
<header id="header">
  <div class="d-flex flex-column">

      <div class="header-logo"><a href="/books">
          <h5><b>Digital</b> Library</h5>
      </a></div>

      <div class="profile">
        <img src="<?php echo e(asset('/img/logo/logo-pribadi-white.png')); ?>" alt="" class="">
      </div>

    <nav id="navbar" class="nav-menu navbar">
      <ul>
        <li id="link-books" class="nav-link active"><i class="bx bxs-book"></i> <span>Books</span> <i class='bx bx-chevron-down nav-drop' role="button" data-bs-toggle="collapse" data-bs-target="#submenu-books" aria-expanded="true" aria-controls="submenu-books"></i></li>
        <ul class="collapse show nav-submenu" id="submenu-books">
            <li class="nav-list"><a href="/index <?php if(Route::is('books.index')): ?> #section-thumbnails <?php endif; ?>" class='scrollto'>Books index</a></li>
            <?php if(Route::is('books.index')): ?>
            <li class="nav-list"><a href='/books #section-most_visited' class='scrollto'>Most visited</a></li>
            <li class="nav-list"><a href='/books #section-reviews' class='scrollto'>Recent reviews</a></li>
            <?php endif; ?>
            <?php if(auth()->guard()->check()): ?>
            <?php if(Auth::user()->role == 'admin'): ?>
            <li class="nav-list"><hr class="dropdown-divider"></li>
            <li class="nav-list"><a href='/books/create' class='scrollto'>Submit new book</a></li>
            <?php endif; ?>
            <?php endif; ?>
        </ul>
        <?php if(auth()->guard()->check()): ?>
        <?php if(Auth::user()->role == 'admin'): ?>
        <li id="link-dashboard" class="nav-link"><i class="bx bxs-dashboard"></i> <span>Admin Dashboard</span> <i class='bx bx-chevron-down nav-drop' role="button" data-bs-toggle="collapse" data-bs-target="#submenu-dashboard" aria-expanded="false" aria-controls="submenu-dashboard"></i></li>
        <ul class="collapse nav-submenu" id="submenu-dashboard">
            <?php $route = 'App\Http\Controllers\UsersController@dashboard' ?>
            <?php if(Route::currentRouteAction() == $route): ?>
            <li class="nav-list"><a href="/dashboard <?php if(Route::currentRouteAction() == $route): ?> #section-users <?php endif; ?>" class="scrollto">Users</a></li>
            <li class="nav-list"><a href="/dashboard <?php if(Route::currentRouteAction() == $route): ?> #section-books <?php endif; ?>" class="scrollto">Books</a></li>
            <li class="nav-list">Statistics</li>
            <li class="nav-list">Log</li>
            <?php else: ?>
            <li class="nav-list"><a href='/dashboard'>Dashboard</a></li>
            <?php endif; ?>
        </ul>
        <?php endif; ?>
        <?php endif; ?>
      </ul>
    </nav>

  </div>
</header>

<!-- ======= section header ======= -->
<section id="section-header">
  <div id="inner-header" class="container-fluid vertical-center">
    <div id="user-data" class="d-flex vertical-center">
      <?php if(auth()->guard()->check()): ?>
      <img src="<?php echo e(asset('/img/icons/male.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
      <span id="user-name"><?php echo e(Auth::user()->profile->first_name); ?> <?php echo e(Auth::user()->profile->last_name); ?></span> | <span id="user-role"><?php echo e(ucfirst(Auth::user()->role)); ?></span> 
      <?php endif; ?>
      <?php if(auth()->guard()->guest()): ?>
      <img src="<?php echo e(asset('/img/icons/male.png')); ?>" id="user-img" alt="" class="img-fluid rounded-circle">
      <span id="user-name">Guest</span>
      <?php endif; ?>
      <i id="user-icon" class='bx bx-chevron-down' type="button" id="user-menu" data-bs-toggle="dropdown" aria-expanded="false"></i>
      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="user-menu">
        <?php if(auth()->guard()->check()): ?>
        <li><a class="dropdown-item" href="#">Profile</a></li>
        <li><a class="dropdown-item" href="/logout">Log out</a></li>
        <?php endif; ?>
        <?php if(auth()->guard()->guest()): ?>
        <li><a class="dropdown-item" href="/login">Log in</a></li>
        <li><a class="dropdown-item" href="/register">Register</a></li>
        <?php endif; ?>
      </ul>
    </div>
  </div>
</section>
<!-- ======= section header end ======= --><?php /**PATH C:\xampp\htdocs\Laravel - Digital Library Alt\digital-library\resources\views/layouts/partials/header.blade.php ENDPATH**/ ?>