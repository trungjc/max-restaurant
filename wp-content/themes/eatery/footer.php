<?php 
global $sa_general;
$general_options = get_option('sa_general', $sa_general); 
$copyright_footer_text = $general_options['footer_copyright'];

if ($copyright_footer_text > ""){
	$footer_text = $copyright_footer_text;
}else{
	$footer_text = "Copyright &copy; " . date("Y ") . get_bloginfo('name') . ". All rights reserved.";
}
?>
</div> <!-- .eightcol End -->    
</div> <!-- .row -->        
</div> <!-- #container -->

</div> <!-- #wrapper -->
</div> <!-- #wrapper -->
<?php wp_footer(); ?>
</body>
</html>