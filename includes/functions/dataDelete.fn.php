<?php
/**
* @Author Divyesh Rana
* Created on : 03-March-2016
* Purpose: Common database insert function
* Last Modified By: Divyesh Rana
* Last Modified Date: 03-March-2016
*/

include_once(DIR_WS_FUNCTIONS.'general.fn.php');

function delevent($conn,$id,$date)
		{
			$sqldelEvent = "Update `event_mst`  set `deleted_at` = '".$date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `event_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelEvent);
			//echo 12;
			exit;
		}
function delCmpNew($conn,$id,$del_date)
		{
			$sqldelCmpNew = "Update `company_mst`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `cmp_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			exit;
		}
function delEquip($conn,$id,$del_date)
		{
			$sqldelEquip = "Update `equipment_mst`  set `deleted_at` = '".$del_date."', `deleted_by` = '".$_SESSION['USER_ID']."' where `eq_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelEquip);
			//echo 12;
			exit;
		}
function delCatg($conn,$id,$del_date)
		{
			$sqldelCmpNew = "Update `eq_category_mst`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `cat_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			exit;
		}
function delAcs($conn,$id,$del_date)
		{
			$sqldelCmpNew = "Update `eq_accessories`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `as_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			exit;
		}
function delVend($conn,$id,$del_date)
		{
			$sqldelCmpNew = "Update `vendor_mst`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `vend_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			exit;
		}

?>