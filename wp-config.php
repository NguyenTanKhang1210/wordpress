<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nguyentankhang_2120110085' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2c~#?20=)jGZR!^H^{&xyf|8_(v|U~78xT<?X+d-8sYhEd.uZz3^tI+F*|?FyyU&' );
define( 'SECURE_AUTH_KEY',  'tL]+*SIf4(~!pWEiY{s> ;y32*g9]YTy`;%ROro2X/ftChcjQ9,wQ6#LOV(C08 2' );
define( 'LOGGED_IN_KEY',    'Av?Y$sGQ5gv=K)oathp@ulw4{6xVUjl72M44ZN,$mja),?zx%{HG781rEFN>Eufe' );
define( 'NONCE_KEY',        '@A QT@r!5MPX4%y4^q8J&gXdjmmaoHu:Y%)4N))c)$ggR,tK?9TG&rFco~{at`T]' );
define( 'AUTH_SALT',        ')zr<DLQ ~J)S4^$[5%=}+yVflkodU,A5>vKdlYbrcC`.;{p&Y[#Dt& MSjXK (I)' );
define( 'SECURE_AUTH_SALT', ')]IE/r|;gOcsZ~-O*oJ!32?c__qKy785P9I5<S6H_M=dEC?59aRV1b/Jks@E3k9M' );
define( 'LOGGED_IN_SALT',   '2rm#KLY]!2[7>~4f%4jy+f<|AS/KV(G$1Y.rk[S|^WhV6AIJ07Z33O;F$)A$&n)y' );
define( 'NONCE_SALT',       '@R7y sGJg!E)<`.9I9F.~J@=IMSb_qLV;UL@EOD)S{j;eOzf?qA[Rd8i2RDpZya[' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'ntk_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
