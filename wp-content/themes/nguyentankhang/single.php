<?php get_header();?>
<section class="maincontent">
    <div class="container py-4">
        <?php if (have_posts()) : ?>
            <?php while (have_posts()) : the_post(); ?>
            <h1><?php the_title(); ?></h1>
            <p><?php the_content(); ?></p>
        <?php endwhile; ?>
        <?php endif; ?>
    </div>
</section>
<?php get_footer();?>
