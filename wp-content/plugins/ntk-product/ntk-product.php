<?php
/*
 * Plugin Name:       NTK Product
 * Plugin URI:        #
 * Description:       Product Plugin.
 * Version:           1.0.0
 * Author:            Nguyễn Tấn Khang
 * Author URI:        #
 * License:           GPL v2 or later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 * Update URI:        https://example.com/my-plugin/
 * Text Domain:       ntk-product
 * Domain Path:       /languages
 */

 define('NTKPRODUCT_PATH', plugin_dir_path(__FILE__));
 define('NTKPRODUCT_URI', plugin_dir_url(__FILE__));

 require_once NTKPRODUCT_PATH . 'includes/includes.php';
 

function ntk_product_activation()
{

}
register_activation_hook(__FILE__,'ntk_product_activation');
function ntk_product_deactivation()
{

}
register_deactivation_hook(__FILE__,'pluginprefix_function_to_run');

