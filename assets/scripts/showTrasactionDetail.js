$('#tranexcel').click(function()
		{	
			// alert(" use for excel");
			// return false;
			$.ajax({
				url : 'includes/tranExcel.php',
				type : 'POST',
				async : false,
				data : {
					'excel'  : 1,				
				},
				success : function(vp)
				{	
					if(vp==1)
					{
					window.location.href = 'upload//excel//transaction.csv';
					}
				}				
			});	
						
		});

$('body').delegate('.expopen','click',function()
	{			
			
		$('#pop_background').fadeIn();
		$('#pop_box').fadeIn();
		var event_id = $(this).data('id');
		//alert(event_id);
		//return false;
		$.ajax({
			url : 'includes/transactionDetailPost.php',
			type : 'POST',
			async : false,
			data : {
				'ExpDtl'  : 1,
				'event_id' 	: event_id,										
			},
			success : function(ex)
			{
				// $('#txtevent_vend_id').val(va.event_vendor_id);
				// $('#txtvend_evnt_id').val(va.event_id);					
				// showeventpaidtrn();
				$('#showexpdtl').html(ex);
			}
			
		});		
	});

function showTrnDtl()
		{		
			$.ajax({
				url : './includes/transactionDetailPost.php',
				type : 'post',
				async : false,
				data : {
					'showTrnDtl' : 1
					
				},
				success : function(r)
				{
					$('#showTrnDetail').html(r);
					
					//initTable1();
					//$("th").removeClass("sorting_asc").addClass("sorting_asc");
					
				}
				
			});
		}
		showTrnDtl();
		
function showExpDrp()
		{		
			$.ajax({
				url : './includes/transactionDetailPost.php',
				type : 'post',
				async : false,
				data : {
					'showExpCtg' : 1
					
				},
				success : function(r)
				{
					$('#showexpctg').html(r);					
				}
				
			});
		}
		showExpDrp();
		
function showEvent()
		{		
			$.ajax({
				url : './includes/transactionDetailPost.php',
				type : 'post',
				async : false,
				data : {
					'showEvent' : 1
					
				},
				success : function(r)
				{
					$('#showevent').html(r);					
				}
				
			});
		}
		showEvent();
		
function showStaffDrp()
		{		
			$.ajax({
				url : './includes/transactionDetailPost.php',
				type : 'post',
				async : false,
				data : {
					'showStaffDrp' : 1
					
				},
				success : function(r)
				{
					$('#showstf').html(r);					
				}
				
			});
		}
		showStaffDrp();
		
$('#addexp').click(function()
	{
		var showexpctg    =   $('#showexpctg').val();
		var showevent     =   $('#showevent').val();
		var txtfromdt     =   $('#txtfromdt').val();	
		var txtamt    =   $('#txtamt').val();
		var showstf     =   $('#showstf').val();
		
		// alert(showexpctg);
		// alert(showevent);
		// alert(txtfromdt);
		// alert(txtamt);
		// alert(showstf);
		
		// return false;
		
		
		$.ajax({
			url : './includes/transactionDetailPost.php',
			type : 'POST',
			async : false,
			data : {
				'saverecord'  : 1,
				'showexpctg'   : showexpctg,
				'showevent'   : showevent,
				'txtfromdt'  : txtfromdt,	
				'txtamt'   : txtamt,
				'showstf'  : showstf,
				
				
			},
			success : function(re)
			{
				// if(re == 0)
				 // {
					//alert ("Inserted Data Successfully");
					
					$('#showexpctg').val('');
					$('#showevent').val('');
					$('#txtfromdt').val('');
					$('#txtamt').val('');
					$('#showstf').val('');
					
					
					
					$("#msgs").html("<i class=\"fa fa-check-circle-o\"> Successfully Updated!!");
					$('#msgs').addClass('fadeInDown').fadeIn('slow');
					$('#msgs').addClass('fadeInDown').fadeOut('slow');	
					$("#add_form").toggle();
											
				// }					
			}				
		});	
		//showdata();			
	});