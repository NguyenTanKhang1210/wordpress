<?php
//CSS end JavaScript
if(!function_exists('add_enqueue_css_mytheme'))
{
    function add_enqueue_css_mytheme()
    {
        wp_enqueue_style( 'bootstrap.min', THEME_URL . '/assets/bootstrap/css/bootstrap.min.css', array(), '1.1', 'all' );
        wp_enqueue_style( 'all.min', THEME_URL . '/assets/fontawesome/css/all.min.css', array(), '1.1', 'all' );
        wp_enqueue_style( 'layout', THEME_URL . '/assets/css/layout.css', array(), '1.1', 'all' );
        wp_enqueue_style( 'style', THEME_URL . '/style.css', array(), '1.1', 'all' );
    }
    add_action( 'wp_enqueue_scripts', 'add_enqueue_css_mytheme' );
    
}
if(!function_exists('add_enqueue_script_mytheme'))
{
    function add_enqueue_script_mytheme()
    {
        wp_enqueue_script( 'bootstrap.bundle', THEME_URL . '/assets/bootstrap/js/bootstrap.bundle.min.js', array(), '1.1', 'true' );
    }
    
    
    add_action( 'wp_enqueue_scripts', 'add_enqueue_script_mytheme' );
    
}
