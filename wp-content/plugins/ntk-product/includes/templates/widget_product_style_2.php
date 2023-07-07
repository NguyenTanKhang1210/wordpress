<?php foreach ($product_cat_list as $cat) : ?>
 <h1><?= $cat->name; ?></h1>
 <?php
 $args_product = array(
 'post_type' => 'product',
 'post_status' => 'publish',
 'posts_per_page' => $number,
 'orderby' => 'title',
 'order' => 'DESC',
 'tax_query' => [
 [
 'taxonomy' => 'product-category',
 'field' => 'term_id',
 'terms' => $cat->term_id
 ]
 ]
 );
 $product_list = new WP_Query($args_product);
 ?>
 <?php if ($product_list->have_posts()) : ?>
 <div class="row">
 <?php while ($product_list->have_posts()) : $product_list->the_post(); ?>
 <div class="col-md-3">
 <div class="product-item mb-3 border">
 <div class="product-img">
 <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
 <?php the_post_thumbnail('thumbnail', ['class' => 'img-fluid w-100']); ?>
 </a>
 </div>
 <h3 class="product-title">
 <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
 <?php the_title(); ?>
 </a>
 </h3>
 <?php
 $product_price = get_post_meta(get_the_ID(), 'product_price', 'true');
 $product_pricesale = get_post_meta(get_the_ID(), 'product_pricesale', 'true');
 ?>
 <div class="product-price">
 <div class="row">
 <div class="col-6"><?= $product_price; ?></div>
 <div class="col-6"><?= $product_pricesale; ?></div>
 </div>
 </div>
 </div>
 </div>
 <?php endwhile; ?>
 </div>
 <?php endif; ?>
<?php endforeach; ?>
