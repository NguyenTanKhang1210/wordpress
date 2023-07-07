<?php
function ntk_product_category_taxonomy()
{
    $labels = array(
        'name'              => _x('Danh mục sản phẩm', 'taxonomy general name'),
        'singular_name'     => _x('Danh mục sản phẩm', 'taxonomy singular name'),
        'search_items'      => __('Search Courses'),
        'all_items'         => __('Tất cả danh mục'),
        'parent_item'       => __('Danh mục cha'),
        'parent_item_colon' => __('Parent Course:'),
        'edit_item'         => __('Sửa danh mục sản phẩm'),
        'update_item'       => __('Update Course'),
        'add_new_item'      => __('Add New Course'),
        'new_item_name'     => __('New Course Name'),
        'menu_name'         => __('Danh mục sản phẩm'),
    );
    $args   = array(
        'hierarchical'      => true, // make it hierarchical (like categories)
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => ['slug' => 'danh-muc-san-pham'],
    );
    register_taxonomy('product-category', ['product'], $args);
}
add_action('init', 'ntk_product_category_taxonomy');
