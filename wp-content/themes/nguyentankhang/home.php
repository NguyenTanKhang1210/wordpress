<?php get_header();?>
<section class="maincontent">
    <div class="slider">
        <?php get_template_part('template_part/slider') ;?>
    </div>
    <div class="container py-4">
            <div class="row mb-4">
            <div class="col-md-9">
            <?php 
                if ( is_active_sidebar( 'sidebar-home' ) )
                {
                    dynamic_sidebar( 'sidebar-home' ); 
                }
                ?>
            </div>
            <div class="col-md-3">
                <?php get_sidebar();?>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>
