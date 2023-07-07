<?php
function themename_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Main Sidebar', 'theme_name' ),
		'id'            => 'main-sidebar',
		'before_widget' => '<div class="mywidget">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => __( 'Sidebar Footer 1', 'theme_name' ),
		'id'            => 'sidebar-footer-1',
		'before_widget' => '<div class="mywidget">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
    register_sidebar( array(
		'name'          => __( 'Sidebar Footer 2', 'theme_name' ),
		'id'            => 'sidebar-footer-2',
		'before_widget' => '<div class="mywidget">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
    register_sidebar( array(
		'name'          => __( 'Sidebar Home', 'theme_name' ),
		'id'            => 'sidebar-home',
		'before_widget' => '<div class="mywidget">',
		'after_widget'  => '</div>'
	) );
}
add_action( 'widgets_init', 'themename_widgets_init' );