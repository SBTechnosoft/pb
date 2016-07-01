<?php

include_once('./header.php');
if(isset($_POST['show']))
	{	
		$data = showCntStatus($conn);		
?>		
		<li>
			<a href="<?php echo HTTP_SERVER.'index.php?url=EALL';?>">
				<i class="icon-group"></i> All 
				<span class="badge"><?php echo $data[0]['tot']; ?></span>
			</a>
				
		</li>

		<li>
			<a href="<?php echo HTTP_SERVER.'index.php?url=NEW';?>">
				<i class="icon-file"></i> New 
				<span class="badge"><?php echo $data[0]['new1']; ?></span>
			</a>
				
		</li>

		<li class="">
			<a href="<?php echo HTTP_SERVER.'index.php?url=UPC';?>">
				<i class="icon-time"></i> Upcoming
				<span class="badge"><?php echo $data[0]['upcoming']; ?></span>
			</a>
		</li>

		<li class="click">
			<a href="<?php echo HTTP_SERVER.'index.php?url=COM';?>">
				<i class="icon-check"></i> Completed
				<span class="badge"><?php echo $data[0]['completed']; ?></span>
			</a>
		</li>
	<?php
	}
	
?>