<?php get_header();?>
<section class="maincontent">
    <div class="container py-4">
        <?php if (have_posts()) : ?>
            <?php while (have_posts()) : the_post(); ?>
            <div class="row">
                <div class="col-md-6">
                    <?php the_post_thumbnail('full',['class'=>'imd-fluid']);?>
                </div>
                <div class="col-md-6">
                <h1><?php the_title(); ?></h1>
                <?php
                    $product_price = get_post_meta(get_the_ID(), 'product_price', 'true');
                    $product_pricesale = get_post_meta(get_the_ID(), 'product_pricesale', 'true');
                    ?>
                   <div><?= $product_price; ?></div>
                    <div><?= $product_pricesale; ?></div>
                </div>
            </div>


            
            <div class="row">
                <div class="col-12">
                <?php the_content(); ?>
                </div>
            </div>
        <?php endwhile; ?>
        <?php endif; ?>
    </div>
</section>
<?php get_footer();?>