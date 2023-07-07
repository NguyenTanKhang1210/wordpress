<?php
if(!function_exists('custom_post_type_slider'))
{
    function custom_post_type_slider() {
        $agrs = array(
            'labels'      => array(
                'name'          => __('Slider', 'nguyentankhang'),
                'singular_name' => __('Slider', 'nguyentankhang'),
            ),
                'public'      => true,
                'has_archive' => true,
                'supports' => array(
                    'title', 'thumbnail'
                )
                );
        register_post_type('slider', $agrs);
    }
    add_action('init', 'custom_post_type_slider');
    
}
