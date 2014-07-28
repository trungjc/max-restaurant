<?php get_header();

global $sa_general;

/* GENERAL OPTIONS */
$general_options = get_option('sa_general',$sa_general); 

if (isset($general_options['reso_24_hour_clock'])) {
    $reso_24_hour_clock = $general_options['reso_24_hour_clock'];
}else{
	$reso_24_hour_clock = 0;
}

        $type = 'themo_event';
        $args = array (
			'post_type' => $type,
			'meta_key' => 'mg_event_start_datetime_timestamp',
			'orderby' => 'meta_value_num',
			'order' => 'ASC',
			'paged' => $paged,			
        );
        $temp = $wp_query; // assign ordinal query to temp variable for later use  
        $wp_query = null;
        $wp_query = new WP_Query($args); 
?>	
<div class="container">
<div class="row">       
    <?php get_sidebar(); ?>
	<div class="eightcol last">
                       
    <div id="main-content">
        <div id="inner-content">
        	<h1 class="page-title"><?php wp_title("",true); ?></h1>
            <hr class="headings">
        	<?php
			 if ( $wp_query->have_posts() ) :
				 while ( $wp_query->have_posts() ) : $wp_query->the_post(); 
				 // Return META Data
				$start_date_time = get_post_meta($post->ID, 'mg_event_start_datetime_timestamp', true);
				$start_date = gmdate("l M j, Y", $start_date_time);
				
				if ($reso_24_hour_clock){
					$start_time = gmdate("G:i a", $start_date_time);
				}else{
					$start_time = gmdate("g:i a", $start_date_time);
				}
	
				$start_day = gmdate("d", $start_date_time);
				$start_month = gmdate("M", $start_date_time);				
				
				$end_date_time = get_post_meta($post->ID, 'mg_event_end_datetime_timestamp', true);
				$end_date = gmdate("l M j, Y", $end_date_time);
				
				if ($reso_24_hour_clock){
					$end_time = gmdate("G:i a", $end_date_time);
				}else{
					$end_time = gmdate("g:i a", $end_date_time);
				}
				
				if ($start_date === $end_date){
					$end_date = "";
				}
				 ?>                	
					<div class="blog_post post-<?php the_ID(); ?> <?php post_class(); ?>">            
						<?php if ( has_post_thumbnail() ) { ?>                        
								<div class="blog_post_image">
									<a title="<?php printf(__('Permanent Link to %s', 'eatery'), get_the_title()); ?>" href="<?php the_permalink(); ?>">
										<?php the_post_thumbnail('blog_image'); ?>
									</a>
								</div>    
						<?php } ?>
						<div class="date-box">
                        	<p class="day"><?php echo $start_day; ?></p>
                        	<p class="month"><?php echo $start_month; ?></p>                            
                        </div>
						<h3 class="event-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
						<p class="eventmeta"><?php 
							echo "".$start_date ." ". $start_time;
							echo " - ";
							echo "".$end_date ." ". $end_time;				
						?>
                        </p>
                        <div class="event-content">
							<?php the_content(__('Read more &raquo;','eatery')); ?>
						</div>
					</div>
	
				<?php endwhile; 
			 else :
				echo '<h3 class="post-title">No events at this time</h2>';
			endif;
			?>

			<?php if ( $wp_query->max_num_pages > 1 ) : ?>  
                <div id="older-posts"><?php next_posts_link(__('Next Page &raquo;','eatery')); ?></div>                
                <div id="newer-posts"><?php previous_posts_link(__('&laquo; Previous Page','eatery')); ?></div>            
            <?php endif; 
			$wp_query = $temp;
			?>  
            <br class="clear" />
            <div class="corner topLeft"></div>
            <div class="corner topRight"></div>            
            <div class="corner bottomLeft"></div>
            <div class="corner bottomRight"></div>                   
        </div>                
    </div>   

        <div style="clear:both;"></div>        

    <?php get_footer(); ?>    