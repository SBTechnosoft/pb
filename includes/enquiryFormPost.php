<?php
	include_once('./header.php');
	//include_once('./footer.php');
	
	
	
	if(isset($_POST['saverecord']))
	{		
		insEnqFrm($conn,$_POST['txtclnm'],$_POST['txtcladd'],$_POST['txtclmail'],$_POST['txtclmob'],$_POST['txtclenqdate'],$_POST['txtenqtime'],$_POST['txt_type_event'],$_POST['txtfrom_dt'],$_POST['txt_to_dt'],$_POST['txt_event_add'],$_POST['drp_remainder']);	
	}

	if(isset($_POST['edit']))
	{		
		updEnqFrm($conn,$_POST['id']);	
	}
	
	
	if(isset($_POST['show']))
	{	
		$data = showEventEnquiry ($conn);
		//echo json_encode($data);
		$showEventCnt = count($data);	
		for($i=0;$i<$showEventCnt;$i++)
		{
		?>
		
			<tr>
				
				<td><?php echo $data[$i]['event_id'];?></td>
				
				<td><?php echo ucfirst($data[$i]['event_name']);?></td>
				
				<td>
					<i class="fa fa-info-circle" style="cursor:pointer;" data-toggle="tooltip" data-html="true" 
					title="Client Comapany:<?php echo $data[$i]['client_cmp'];?><br>
					Client Email:<?php echo ucfirst($data[$i]['client_email']);?><br>
					Mobile1:<?php echo $data[$i]['client_work_mob'];?><br>
					Mobile2:<?php echo $data[$i]['client_home_mob'];?>">
					</i>&nbsp;&nbsp;<?php echo ucfirst($data[$i]['client_name']);?>
				</td>
				<td> <?php echo $data[$i]['fp_no']; ?> </td>
				<td> <?php echo $data[$i]['bill_no'];?> </td>
				
				<?php $from_date=date_create($data[$i]['from_date']);
						$inm1= date_format($from_date,dateFormat);  
				?>
				<td><?php echo $inm1;?></td>
				
				
				<?php// $to_date=date_create($data[$i]['to_date']);
						//$inm2= date_format($to_date,dateFormat);  
				?>
				<!--td><?php//echo $inm2;?></td-->
				
				<td> <span style="float:right;"><?php echo $data[$i]['client_charges'];?></span> </td>
				
				<td>
					<span style="float:right;">
						<?php if($data[$i]['service_tax_rate']!=''){?><i class="fa fa-info-circle" style="cursor:pointer;" data-toggle="tooltip" data-html="true" 
						title="Tax Rate:<?php echo $data[$i]['service_tax_rate']."%";?>">
						</i>&nbsp;&nbsp;<?php echo $data[$i]['service_tax_amt'];}?> 
					</span>
				</td>
				<td><span style="float:right;"><?php echo $data[$i]['total_amt'];?> </span></td>
				<td> 
					<a href="#" data-id="<?php echo $data[$i]['event_id']; ?>" class="editenq" data-toggle="tooltip" title="Order">
						<i class="fa fa-file-text"></i>
						Order
					</a> &nbsp;&nbsp;&nbsp;
					 
				</td>		
				
			</tr>
			
		<?php
			
		}
		
	}
?>