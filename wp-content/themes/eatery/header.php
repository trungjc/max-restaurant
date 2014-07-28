<?php 
/**
	* header.php
	
	* WordPress Header File - Responsible for Doctype through open BODY tag. 
	
	* License: GNU GENERAL PUBLIC LICENSE Version 2
	* License URI: http://www.themovation.com/eatery/license 
	
	* @copyright  2012 Themovation
	* @version    1.1
	* @link       http://www.themovation.com/eatery
	* AUG 20, 2013 - Add / Remove Viewport tag as per fluid, semi-fluid and fully responsive
	* options inside theme options (layout tab).
*/


/**
	* wc_button

	* Takes a URL, Target, color, align, size, shape and returns a formatted button.

*/

/* CUSTOM LAYOUT OPTIONS */
global $sa_layout;
$layout_options = get_option('sa_layout',$sa_layout); // Get Layout Options
$layout_view = $layout_options['layout_view']; // Responsive (Fluid) or Unresponsive (Fixed)
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>><head>
<?php 
/* Theme Options | ENABLE / DISABLE Responsive theme */
if ($layout_view == 'fluid'){ echo "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />"; }
?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php
    if ( is_single() ) { single_post_title(); }
    elseif ( is_home() || is_front_page() ) { bloginfo('name'); print ' | '; bloginfo('description'); }
    elseif ( is_page() ) { single_post_title(''); }
    elseif ( is_search() ) { bloginfo('name'); print ' | Search results for ' . esc_html($s); }
    elseif ( is_404() ) { bloginfo('name'); print ' | Not Found'; }
	else { bloginfo('name'); wp_title('|'); }
?></title>

<meta http-equiv="content-type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />
<?php if ( is_singular() ) wp_enqueue_script( 'comment-reply' ); ?> 

<link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet" type="text/css" />
<?php wp_head(); ?>
<link rel="alternate" type="application/rss+xml" href="<?php bloginfo('rss2_url'); ?>" title="<?php printf( __( '%s latest posts', 'eatery' ), esc_html( get_bloginfo('name'), 1 ) ); ?>" />
<link rel="alternate" type="application/rss+xml" href="<?php bloginfo('comments_rss2_url') ?>" title="<?php printf( __( '%s latest comments', 'eatery' ), esc_html( get_bloginfo('name'), 1 ) ); ?>" />
<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<!-- Responsive JS -->
<!--[if lt IE 9]>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<!-- END Responsive JS -->

<?php 
/* ################ THEME OPTIONS ################ */ 
/* LAYOUT OPTIONS */ include (TEMPLATEPATH . '/header_layoutOpt.php'); 
/* TYPOGRAPHY OPTIONS */ include (TEMPLATEPATH . '/header_typoOpt.php'); 
/* GENERAL OPTIONS */ include (TEMPLATEPATH . '/header_generalOpt.php'); 
/* ################ END THEME OPTIONS ################ */ 
?>

</head>

<body <?php body_class(); ?>>

<!-- MOBILE MENU -->
<div id="top-bar"><div class="mobile-menu"><!--span-->
<form method="get" action="<?php bloginfo('template_directory'); ?>/nav.php" >
 <?php wp_nav_menu(array( 
 'fallback_cb'     => 'show_memu_help',
 'menu' => 'mobile', 
  'items_wrap' => '<select name="-Menu-">%3$s</select>', 
  'walker' => new select_menu_walker() 
 )); ?> <input class="mob-sub" type="submit" value="Go" />
</form>
<!--/span--></div></div>
<div id="wrapper-container">
<div id="wrapper">
	<div id="header-bg">
            <div class="header-image"></div>
        </div>