<?php get_header();?>
<section class="maincontent">
    <div class="container py-4">
        <h1><?php single_cat_title();?></h1>
        <?php if (have_posts()) : ?>
            <div class="row">
            <?php while (have_posts()) : the_post(); ?>
            
                            <div class="col-md-4">
                            <a href="<?php the_permalink();?>" title =" <?php the_title();?>" >
                                <?php if (has_post_thumbnail()):?>
                                    <?php the_post_thumbnail('medium',['class'=>'img-fluid w-100']);?>
                                <?php else:?>
                                    <img class="img-fluid-w-100" src="<?php echo THEME_URL . '/assets/images/default_600x400.jpg'; ?>"  
                                    alt="<?php the_title(); ?>">
                                <?php endif;?>    
                            </a>
                            <h1> 
                                    <a href="<?php the_permalink();?>" title =" <?php the_title();?>" >
                                        <?php the_title(); ?> 
                                    </a>
                                    
                                    </h1>
                            </div>
                                
        <?php endwhile; ?>
        </div>
        <?php endif; ?>
    </div>
</section>
<?php get_footer();?>

