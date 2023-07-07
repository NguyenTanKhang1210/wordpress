<p>
 <label for="<?php echo esc_attr($this->get_field_id('title')); ?>">Tiêu đề</label>
 <input class="widefat" type="text" value="<?php echo esc_attr($instance['title']); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" id="<?php echo esc_attr($this->get_field_id('title')); ?>">
</p>
<p>
 <label for="<?php echo esc_attr($this->get_field_id('number')); ?>">Số mẫu tin</label>
 <input class="widefat" type="number" value="<?php echo esc_attr($instance['number']); ?>" name="<?php echo esc_attr($this->get_field_name('number')); ?>" id="<?php echo esc_attr($this->get_field_id('number')); ?>">
</p>
