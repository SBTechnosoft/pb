
	$( function() {		
		//save data
		$('#savetax').click(function(){
			var txtservicetax    =   $('#txtservicetax').val();
			if(txtservicetax == "")
			{
				alert("Plz Insert The Tax!!!");
				return false;
			}
			if(txtservicetax != "")
			{
				if(isNaN(txtservicetax))
				{
					alert("Please Only Numeric in Tax!!! (Allowed input:0-9)")
					return false;
				}
				if(txtservicetax == 0)
				{
					alert("Can't GIve Tax 0");
					return false;
				}
			}
					
			$.ajax({
				url : './includes/addOptionSettingsPost.php',
				type : 'POST',
				async : false,
				data : {
					'saverecord'  : 1,
					'txtservicetax'   : txtservicetax,																			
				},
				success : function(re)
				{
					if(re == 1)
					 {
						alert ("Inserted Data Successfully");
								
					 }
					showdata();
					$("#default").show();
					$("#hide1").hide();
				}				
			});	
				
		});	
		
		$('#updays').click(function(){
			var txtdays    =   $('#txtdays').val();
					
			$.ajax({
				url : './includes/addOptionSettingsPost.php',
				type : 'POST',
				async : false,
				data : {
					'saveDays'  : 1,
					'txtdays'   : txtdays,																			
				},
				success : function(re)
				{
					if(re == 1)
					 {
						alert ("Inserted Data Successfully");
								
					 }
					showdata();
					$('#txtdays').attr('readonly','txtdays');
					
					$("#editdays").show();
					$("#updays").hide();
				}				
			});	
				
		});
		function showdata()
		{		
			$.ajax({
				url : './includes/addOptionSettingsPost.php',
				type : 'post',
				async : false,
				data : {
					'show' : 1
					
				},
				success : function(r)
				{
					$('#txtservicetax').val(r.service_tax);					
					$('#txtservicetax1').val(r.service_tax);
					$('#txtdays').val(r.upcoming_days);
				}
				
			});
		}
		
		showdata();
	});		
			