<?php
function ntk_product_meta_box_html()
{
    require_once NTKPRODUCT_PATH . 'includes/templates/ntk_product_meta_box_html.php';
}
function ntk_product_add_custom_box()
{
    $screens = ['post', 'wporg_cpt'];
    foreach ($screens as $screen) {
        add_meta_box(
            'ntk_product_meta_box_id',                 // Unique ID
            'Thông tin sản phẩm',      // Box title
            'ntk_product_meta_box_html',
            'product'
        );
    }
}
add_action('add_meta_boxes', 'ntk_product_add_custom_box');

//luu
function ntk_product_save_post($post_id)
{
    if ($_REQUEST['post_type'] == 'product') {
        $product_price = $_REQUEST['product_price'] ?? null;
        $product_pricesale = $_REQUEST['product_pricesale'] ?? null;
        $product_qty = $_REQUEST['product_qty'] ?? null;
        //luu vào csdl
        update_post_meta($post_id, 'product_price', $product_price);
        update_post_meta($post_id, 'product_pricesale', $product_pricesale);
        update_post_meta($post_id, 'product_qty', $product_qty);
    }
}
add_action('save_post', 'ntk_product_save_post');
