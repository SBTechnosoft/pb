<?php
	include_once('./header.php');
	//include_once('./footer.php');
	if(isset($_POST['saverecord']))
	{		
		insOption($conn,$_POST['txtservicetax']);	
	}
	if(isset($_POST['saveDays']))
	{		
		insOptionDays($conn,$_POST['txtdays']);	
	}
	if(isset($_POST['saveTarget']))
	{			
		insOptionTarget($conn,$_POST['txttrgt']);	
		insOptionMonth($conn,$_POST['txtmonyr']);
	}
	
	if(isset($_POST['show']))
	{	
		$q = mysql_query("SELECT `service_tax`,`upcoming_days`,`target`,`month` from setting ");
		$row = mysql_fetch_array($q);
		header("Content-type: text/x-json");
		echo json_encode($row);
		exit();	
		
	}
?>
				