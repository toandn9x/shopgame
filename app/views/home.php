<?php
require_once 'partials/header.php';
?>

    <div class="container">
		<!-- Slider main container -->
		<div class="swiper">
		  <!-- Additional required wrapper -->
		  <div class="swiper-wrapper">
			<!-- Slides -->
			<?php
                $banners = explode(',', setting('banners'));
                foreach ($banners as $banner):
            ?>
			<div class="swiper-slide <?=$banner == $banners[0] ? 'active" data-mdb-interval="5000' : null?>">
				<img src="<?=$banner?>" alt=="<?=setting('title')?>">
			</div>
		
			<?php endforeach; ?>
		  </div>
		  <!-- If we need pagination -->
		  <div class="swiper-pagination"></div>

		  <!-- If we need navigation buttons -->
		  <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div>

		  <!-- If we need scrollbar -->
		  <div class="swiper-scrollbar"></div>
		</div>
	
        <!--<div id="carousel" class="carousel slide" data-mdb-ride="carousel">
            <div class="carousel-inner">
                <?php
                $banners = explode(',', setting('banners'));
                foreach ($banners as $banner):
                ?>
                <div class="carousel-item <?=$banner == $banners[0] ? 'active" data-mdb-interval="5000' : null?>">
                    <img src="<?=$banner?>" class="d-block w-100" alt="<?=setting('title')?>"/>
                </div>
                <?php endforeach; ?>
            <button class="carousel-control-prev" data-mdb-target="#carousel" type="button" data-mdb-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Trước</span>
            </button>
            <button class="carousel-control-next" data-mdb-target="#carousel" type="button" data-mdb-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Sau</span>
            </button>
        </div> -->
        <div class="mt-5">
            <h3 class="text-center text-uppercase fw-bold mb-4">Danh mục game</h3>
            <div class="row">
                <?php
                foreach ($categories as $category) {
                    $totalAccount = $db->count('accounts', ['category_id' => $category['id'], 'status' => 1]);
                    $soldAccount = $db->count('accounts', ['category_id' => $category['id'], 'status' => 0]);
                ?>
                    <div class="col-sm-3 mb-3">
                        <div class="card">
                            <a href="/game/<?php echo $category['slug']; ?>">
                                <img class="card-img-top"
                                     src="<?php echo $category['image']; ?>"
                                     alt="<?php echo $category['name']; ?>"
                                >
                            </a>
                            <div class="card-body">
                                <h5 class="card-title text-uppercase text-center fw-bold">
                                    <a href="/game/<?php echo $category['slug']; ?>"><?php echo $category['name']; ?></a>
                                </h5>
                                <p class="card-text text-center">
                                    Số tài khoản: <?php echo $totalAccount; ?><br />
                                    Đã bán: <?php echo $soldAccount; ?>
                                </p>
                                <div class="text-center">
                                    <a href="/game/<?php echo $category['slug']; ?>" class="btn btn-primary btn-block">Xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
		
		<div class="mt-5">
            <h3 class="text-center text-uppercase fw-bold mb-4">Dịch vụ nổi bật</h3>
            <div class="row">
                <?php
                foreach ($categories_hot as $category) {
           
                ?>
                    <div class="col-sm-3 mb-3">
                        <div class="card">
                            <a href="/game/<?php echo $category['slug']; ?>">
                                <img class="card-img-top"
                                     src="<?php echo $category['image']; ?>"
                                     alt="<?php echo $category['name']; ?>"
                                >
                            </a>
                            <div class="card-body">
                                <h5 class="card-title text-uppercase text-center fw-bold">
                                    <a href="/game/<?php echo $category['slug']; ?>"><?php echo $category['name']; ?></a>
                                </h5>
                                <div class="text-center">
                                    <a href="/game/<?php echo $category['slug']; ?>" class="btn btn-primary btn-block">Xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
		
		<div class="mt-5">
            <h3 class="text-center text-uppercase fw-bold mb-4">Bảng tin</h3>
            <div class="row">
                <?php
                foreach ($categories_blog as $category) {
                   
                ?>
                    <div class="col-sm-3 mb-3">
                        <div class="card">
                            <a href="/game/<?php echo $category['slug']; ?>">
                                <img class="card-img-top"
                                     src="<?php echo $category['image']; ?>"
                                     alt="<?php echo $category['name']; ?>"
                                >
                            </a>
                            <div class="card-body">
                                <h5 class="card-title text-uppercase text-center fw-bold">
                                    <a href="/game/<?php echo $category['slug']; ?>"><?php echo $category['name']; ?></a>
                                </h5>
                                <p class="card-text text-center">
                                    <?php echo htmlspecialchars_decode($category['description']) ?> <br />
                                </p>
                                <div class="text-center">
                                    <a href="/game/<?php echo $category['slug']; ?>" class="btn btn-primary btn-block">Xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
		
		
		<!-- thông báo modal -->
        <div class="modal fade" id="noticeModal" tabindex="-1" aria-labelledby="noticeModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="noticeModal">Thông báo</h5>
                        <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <?= html_entity_decode(setting('noticeModal')) ?>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary close-modal" data-mdb-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
        <script>

            $(document).ready(function(){
                if (sessionStorage.getItem('noticeModal') !== '1') {
                    $('#noticeModal').modal('show');
                    sessionStorage.setItem('noticeModal', '1');
                }
				
				const swiper = new Swiper('.swiper', {
				  // Optional parameters
				   slidesPerView: 1,
				  spaceBetween: 30,
				  loop: true,
				  centeredSlides: true,
				  autoplay: {
					delay: 3500,
					disableOnInteraction: false,
				  },

				  // If we need pagination
				  pagination: {
					el: '.swiper-pagination',
				  },

				  // Navigation arrows
				  navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				  },

				  // And if we need scrollbar
				  scrollbar: {
					el: '.swiper-scrollbar',
				  },
				});
            });
			
        </script>
    </div>

<?php
require_once 'partials/footer.php';
?>