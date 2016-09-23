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
function delStaff($conn,$id)
		{
			$sqldelEvent = "Delete from `staff_mst` where  staff_id = '".$id."' ";
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
function delEnq($conn,$id,$del_date)
{
	$sqldelCmpNew = "Update `event_mst`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `event_id` = '".$id."' "; 
	$resultArray = $conn->insertQuery($sqldelCmpNew);
	
	$sqldelCmpNew1 = "delete from `event_places_dtl` where `event_id` = '".$id."' "; 
	$resultArray = $conn->insertQuery($sqldelCmpNew1);
}
function delVend($conn,$id,$del_date)
		{
			$sqldelCmpNew = "Update `vendor_mst`  set `deleted_at` = '".$del_date."',`deleted_by` = '".$_SESSION['USER_ID']."' where `vend_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);

			//echo 12;
			exit;
		}
	   function deltranc($conn,$id)
		{
			$sqldelCmpNew = "Delete from `expence_dtl` where  exp_id = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			
		}
function delEquipmentUpd($conn,$id)
		{
			$sqldelCmpNew = "Delete from `new_event_places_dtl` where places_id = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelCmpNew);
			//echo 12;
			//exit;
		}
function delEventPlacesUpd($conn,$id)
		{
			$sqldelPlaces = "Delete from `event_places_dtl` where `event_places_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelPlaces);
			
			$sqldelEquipment = "Delete from `new_event_places_dtl` where `event_places_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelEquipment);
			
			$sqldelResource = "Delete from `res_places_dtl` where `event_places_id` = '".$id."' "; 
			$resultArray = $conn->insertQuery($sqldelResource);
			//echo 12;
			exit;
		}
?>