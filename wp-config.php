<?php
# Database Configuration
define( 'DB_NAME', 'max-restaurant' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', '' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'jc_';

# Security Salts, Keys, Etc
define('AUTH_KEY', 'QDQP>dN&,Z`-}d&e<H=XY+>)6F*V8c@-,KO+}1c5HaQ-2QU c@BY )pqBjMJbHi]');
define('SECURE_AUTH_KEY', '%vGyZ>D(Gx-4WGtt@}9p0zz&k<8&EefQ&>g9d1b@v7jc6T-;hAj5NBf5p`zDEk)<');
define('LOGGED_IN_KEY', 'vgV~s|gQ;P|jTnAD=a-/v;7+Ta?Rd<QSqMi)=+5(|q<h0cXCKC],|_JmJz1~(4YT');
define('NONCE_KEY', 'P2alOd~1NwAXpdf! uDCmwG`.cs.9q}JZbhCK(&:-IjXe%q+|kDFUu],AsOlHd$]');
define('AUTH_SALT',        'qe+; jDv?ruqD]f=D+()T^:|{)MEgbRttE^P+V LIS#)Zx{akxMOF9>RoYi*BL+b');
define('SECURE_AUTH_SALT', 'rb]!3_=l ;qOe:0EDXr^aupz{ht#2^;^+VF&^20qZ<[,YxFd9J4@QAx)4BRbBqhp');
define('LOGGED_IN_SALT',   'r5bJ&e/D+Yu!] g)3NWJ_D:,p._*n5~DHIH=M/AE%Q_Eyh<2oE&X=Y[Z%c|);<uH');
define('NONCE_SALT',       '*U7_1o+XB+):0O^R[i-o!fpGw}-3WVnpyb[|VITV1/RL;_j$L`jJMg.Eo);gGbMb');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'maxsonbroad' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

define( 'PWP_ROOT_DIR', '/nas/wp' );

define( 'WPE_APIKEY', '773e548f0262c804580545d6729a15c47e614b26' );

define( 'WPE_FOOTER_HTML', "" );

define( 'WPE_CLUSTER_ID', '1551' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_CDN_DISABLE_ALLOWED', true );

define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISALLOW_FILE_MODS', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

define( 'WP_POST_REVISIONS', FALSE );

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

umask(0002);

$wpe_cdn_uris=array ( );

$wpe_no_cdn_uris=array ( );

$wpe_content_regexs=array ( );

$wpe_all_domains=array ( 0 => 'maxsonbroad.wpengine.com', );

$wpe_varnish_servers=array ( 0 => 'pod-1551', );

$wpe_special_ips=array ( 0 => '66.228.39.18', );

$wpe_ec_servers=array ( );

$wpe_largefs=array ( );

$wpe_netdna_domains=array ( );

$wpe_netdna_domains_secure=array ( );

$wpe_netdna_push_domains=array ( );

$wpe_domain_mappings=array ( );

$memcached_servers=array ( );

define( 'WPE_CACHE_TYPE', 'generational' );

define( 'WPE_LBMASTER_IP', '66.228.39.18' );
define('WPLANG','');
define('WP_HOME','http://localhost/max-restaurant/');
define('WP_SITEURL','http://localhost/max-restaurant/');
# WP Engine ID


# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
