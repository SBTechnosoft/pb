function showdata()
		{		
			$.ajax({
				url : './includes/allEventStatusPost.php',
				type : 'post',
				async : false,
				data : {
					'show' : 1
					
				},
				success : function(r)
				{
					$('#all_event').html(r);
					
					
				}
				
			});
		}
		showdata();
	$('#alleventexcel').click(function()
		{	
			// alert(" use for excel");
			// return false;
			$.ajax({
				url : 'includes/alleventExcel.php',
				type : 'POST',
				async : false,
				data : {
					'excel'  : 1,				
				},
				success : function(vp)
				{	
					if(vp==1)
					{
					window.location.href = 'upload//excel//alleventexcel.csv';
					}
				}				
			});	
						
		});