<?php
function ntk_product_post_type()
{
    $default = array(
        'labels'      => array(
            'name'          => __('Sản phẩm', 'ntk-product'),
            'singular_name' => __('Sản phẩm', 'ntk-product'),
            'add_new_item'  => __('Thêm mới sản phẩm', 'ntk-product'),
            'add_new'       => __('Thêm mới', 'ntk-product'),
            'all_items'     => __('Tất cả sản phẩm', 'ntk-product'),
        ),
        'public'      => true,
        'has_archive' => true,
        'rewrite'     => array('slug' => 'san-pham'),
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_icon' => 'dashicons-editor-paste-word',
    );
    register_post_type('product', $default);
}
add_action('init', 'ntk_product_post_type');
            //View post type
            add_filter('archive_template', 'pruduct_template_archive');
            function pruduct_template_archive($archive_template)
            {
            global $post;
            if (is_post_type_archive('product')) {
            $archive_template = NTKPRODUCT_PATH . 'templates/archive-product.php';
            }
            return $archive_template;
            }

            add_filter('single_template', 'product_template_single');
            function product_template_single($single_template)
            {
            global $post;
            if ('product' === $post->post_type) {
            $single_template = NTKPRODUCT_PATH . 'templates/single-product.php';
            }
            return $single_template;
            }

