// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults



$(document).ready(function(){
	
		$('#product_mobile_id').change(function(){

		var selected=$('select#product_mobile_id option:selected').val();
		selected= selected=="" ? "all" : selected
		$.ajax({
			url: "/home/"+selected,
			success:function(data){
				$('#mobile_product').html(data);
			}			
		});
	});
	
	
	
		$('#feature_feature_type').change(function(){
	
			var selected=$('select#feature_feature_type option:selected').val();
				      $.ajax({
							url:"/home/feature/"+selected,
							success:function(data){
								 $('#mobile_product').html(data);
							}
						});
					});
					
					
					$('#product_mobile_id').change(function(){
				
	                       $('#feature_feature_type').change(function(){
													
													      			var feature=$('select#feature_feature_type option:selected').val();
													            var product=$('select#product_mobile_id option:selected').val(); 
													            
													            $.ajax({
																					url:"/home/feature_product/"+feature+"/"+product,
																					success:function(data){
																										$('#mobile_product').html(data);
																					}
						
											});
															
          });
								
				});
				               				
					
					
		
});




