

//delete
		$('body').delegate('.delete','click',function(){
			var id = $(this).data('id');
			$.ajax({
				url : 'includes/eventDetailPost.php',
				type : 'POST',
				async : false,
				data : {
					'delete'  : 1,
					'id' 	: id
										
				},
				success : function(d)
				{
					alert("Delete Successfully");
					window.location.reload();
				}
				
			});
			
		});
//end
	function showClientPaidAmt()
		{		
			$.ajax({
				url : './includes/paidAccountingPost.php',
				type : 'post',
				async : false,
				data : {
					'showClPaidAmt' : 1
					
				},
				success : function(r)
				{
					$('#showClientPaid').html(r);
					//initTable1();
					//$("th").removeClass("sorting_asc").addClass("sorting_asc");
					
				}
				
			});
		}
		showClientPaidAmt();
		
	
	$('#paidexcel').click(function()
		{	
			// alert(" use for excel");
			// return false;
			$.ajax({
				url : 'includes/paidExcel.php',
				type : 'POST',
				async : false,
				data : {
					'excel'  : 1,				
				},
				success : function(vp)
				{	
					if(vp==1)
					{
					window.location.href = 'upload//excel//paid.csv';
					}
				}				
			});	
						
		});
	
		