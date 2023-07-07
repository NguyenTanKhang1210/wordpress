<?php
if(!function_exists('add_navbar_mytheme'))
{
    function add_navbar_mytheme()
    {
        register_nav_menus( array(
            'mainmenu'   => __( 'MainMenu Menu', 'nguyentankhang' ),
            'footermenu' => __( 'Footer Menu', 'nguyentankhang' )
        ) );
    }
    add_action( 'after_setup_theme', 'add_navbar_mytheme' );
    
}
