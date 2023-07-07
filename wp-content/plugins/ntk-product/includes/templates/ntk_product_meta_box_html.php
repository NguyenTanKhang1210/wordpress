<?php
global $post;
$product_price = get_post_meta($post->ID,'product_price','true');
$product_pricesale = get_post_meta($post->ID,'product_pricesale','true');
$product_qty = get_post_meta($post->ID,'product_qty','true');
?>
<div class="form-field">
    <lable>Giá sản phẩm </lable>
    <input name="product_price" value="<?= $product_price;?>" type="number" />
</div>
<div class="form-field">
    <lable>Giá khuyến mãi</lable>
    <input name="product_pricesale" value="<?= $product_pricesale;?>" type="number" />
</div>
<div class="form-field">
    <lable>Số lượng sản phẩm</lable>
    <input name="product_qty" value="<?= $product_qty;?>" type="number" />
</div>