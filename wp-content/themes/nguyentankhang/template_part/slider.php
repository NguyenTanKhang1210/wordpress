<?php
$agrs  = array(
    'post_type' => 'slider',
    'post_status' => 'publish',
    'posts_per_page' => 6,
    'orderby' => 'post_date',
    'order' => 'DESC'
);
$slider = new WP_Query ($agrs);
?>
<?php if ($slider->have_posts()):?>
    
    <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner">
                    <?php $index = 0;?>
                    <?php while ($slider -> have_posts()): $slider -> the_post(); ?>
                        <?php if ($index == 0):?>
                        
                        <div class="carousel-item active">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" class="d-block w-100" alt="..."style="height:300px">
                        </div>
                        <?php else:?>
                            <div class="carousel-item">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" class="d-block w-100" alt="..." style="height:300px">
                        </div>
                       <?php endif; ?>
                       <?php $index++; ?>
                    <?php endwhile; ?>
                    
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
    </div>    
<?php endif; ?> 
<?php wp_reset_postdata();?>