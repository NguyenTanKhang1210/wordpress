<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <?php if ( is_singular() && get_option( 'thread_comments' ) ) wp_enqueue_script( 'comment-reply' ); ?>
    <title><?php wp_title('|', true, 'right');?> <?php bloginfo('name');?> </title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <section class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-3">

                    <a href="http://localhost/nguyentankhang_2120110085/">
                        <?php 
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
                        ?>
                        <?php if(has_custom_logo()):?>
                           <img class="img-fluid" src="<?= esc_url( $logo[0] ); ?>" alt="<?= get_bloginfo( 'name' ) ?>">
                        <?php else:?>
                        <img src="<?php echo THEME_URL . '/assets/images/Logo.jpg'; ?>" class="img-fluid" alt="Logo">
                        <?php endif;?>
                    </a>
                </div>
                <div class="col-md-3">
                    Thứ 4, 14/06/2023
                </div>
                <div class="col-md-3">   
                    
                        <i class="fa-solid fa-clock"></i>
                        Tin mới nhất
                        <i class="fa-solid fa-map"></i>
                        Tin Tức khác
                </div>
                <div class="col-md-3">
                    <i class="fa-regular fa-user"></i>
                    Đăng Nhập
                    <i class="fa-solid fa-user"></i>
                    Đăng Ký
                    
                </div>
            </div>
        </div>
    </section>
   
    <section class="mainmenu">
        <div class="container bg-mainmenu">
            <div class="main-menu">
                <?php wp_nav_menu(array('theme_location' => 'mainmenu'));?>
                <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
            </div>

                    
                    
               
        </div>
    </section>