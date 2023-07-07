<?php
class Widget_Product extends WP_Widget
{
 function __construct()
 {
 $widget_ops = array(
 'classname' => 'product_widget',
 'description' => 'My Widget is awesome',
 );
 parent::__construct('product_widget', 'NTK Product List', $widget_ops);
 }
 function form($instance)
 {
 $instance['title'] = $instance['title'] ?? "";
 $instance['number'] = $instance['number'] ?? 3;
 require NTKPRODUCT_PATH . 'includes/templates/widget_product_form.php';
 }
 function update($new_instance, $old_instance)
 {
 $instance = $old_instance;
 $instance['title'] = $new_instance['title'];
 $instance['number'] = $new_instance['number'];
 return $instance;
 }
 function widget($args, $instance)
 {
 $arg_product_cat = array(
 'hide_empty' => 0,
 'taxonomy' => 'product-category',
 'parent' => 0
 );
 $product_cat_list = get_categories($arg_product_cat);
 $number = $instance['number'];
 require NTKPRODUCT_PATH . 'includes/templates/widget_product_style_2.php';
 wp_reset_postdata();
 }
}
add_action('widgets_init', function () {
 register_widget('Widget_Product');
});
