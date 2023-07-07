<?php
if(!function_exists('setup_mytheme'))
{
    //Custom logo
    function setup_mytheme()
    {
        $defaults = array(
            'height'               => 100,
            'width'                => 400,
            'flex-height'          => true,
            'flex-width'           => true,
            'header-text'          => array( 'site-title', 'site-description' ),
            'unlink-homepage-logo' => true, 
        );
        add_theme_support( 'custom-logo', $defaults );
        //Hình đại diện
        add_theme_support( 'post-thumbnails' );
    }
    add_action('after_setup_theme', 'setup_mytheme');
}