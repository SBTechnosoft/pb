function showdataIncome()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',
				async : false,
				data : {
					'showAcc' : 1
					
				},
				success : function(r)
				{
					$('#incper').html(r);					
				}
				
			});
		}
function showdataExpence()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',
				async : false,
				data : {
					'showAccExp' : 1
					
				},
				success : function(r)
				{
					$('#expper').html(r);					
				}
				
			});
		}
function showdataProfit()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',
				async : false,
				data : {
					'showAccProfit' : 1
					
				},
				success : function(r)
				{
					$('#profper').html(r);					
				}
				
			});
		}
function showEventCnt()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',				
				async : false,
				data : {
					'showEventCnt' : 1
					
				},
				success : function(r)
				{
					
					$('#newevents').html(r);
				}
				
			});
		}
function showUPCEventCnt()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',				
				async : false,
				data : {
					'showUPCEventCnt' : 1
					
				},
				success : function(r)
				{
					
					$('#upcevents').html(r);
				}
				
			});
		}
function showTarget()
		{		
			$.ajax({
				url : './includes/dashboardPost.php',
				type : 'post',				
				async : false,
				data : {
					'showTarget' : 1
					
				},
				success : function(r)
				{
					
					$('#trgtper').html(r);
				}
				
			});
		}
		showUPCEventCnt();
		//showdataIncome();
		//showdataExpence();
		//showdataProfit();
		//showEventCnt();
		showTarget();