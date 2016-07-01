<?php
	include_once('includes/header.php');
	require('/home/siliconbrain/public_html/beta.prabandhak.co.in/fpdf/fpdf.php');
	//$fname = $inm.$id.".pdf";
	
	$date=date_create($_POST['txtfdate']);
	$inm = date_format($date,"Ymd");
	$id = $_POST['txteid'];
	$cmp = $_POST['txtcmpnm'];
	$enm = $_POST['txtenm'];	
	$fdate= date_format($date,"dS F , Y H:i A");
	$sdate= date_format($date,"dS F , Y");
	$cnm = $_POST['txtcnm'];
	$charge = $_POST['txtcharge1'];
	$cpaid = $_POST['txtpaid'];
	$ramt = $charge - $cpaid;
	
	
	//$date=date_create($_POST['txtfdate']);
	//$inm = date_format($date,"Ymd");
	//value null hoy to 
	
	
	//echo $fname."<br>";
	
	//$num =  substr($fname,-1);
	//$new = $num + 1;
	//echo $new;
	if(isset($_POST['txteid']))
	{		
		$data = showInvName($conn,$_POST['txteid']);
		$cnt = count($data);		
		for($i=0;$i<$cnt;$i++)
		{
			if($data[$i]['inv_file_name']=='')
			{
				$fname = $inm."-".$_POST['txteid']."_1.pdf";
				
				class Mipdf extends FPDF
				{
					function Header()
					{
						
						$this->SetFont("Arial","",12);
						
						$this->SetTextColor(255,255,255);
						$this->SetFillColor(140,140,140);
						$this->Cell(190,20,"Invoice",1,0,'C',true);
						$this->Image("images/8.png",10,10,20);
						$this->Ln(20);
					}
					function Footer()
					{
						$this->SetY(-20);
						
						$this->Cell(190,7,"Page No.".$this->PageNo()."/{nb}",1,0,'C');
					}
				}
				$mipdf = new Mipdf();
				$mipdf->AliasNBPages();
				$mipdf->addPage();
				
				$mipdf->Cell(130,10,"To: ".$cmp,1,0);
				$mipdf->Cell(60,10,$sdate,1,1,'C');
				
				$mipdf->Cell(130,10,"Event: ".$enm,1,0);
				$mipdf->Cell(60,10,"FP No.: ".$id,1,1);
				
				$mipdf->Cell(190,10,"Event Date: ".$fdate,1,1);
				
				$mipdf->Cell(130,10,"Vennue: ",1,0);
				$mipdf->Cell(60,10,"Invoice No.: ".$id,1,1);
				
				$mipdf->Cell(190,10,"Client: ".$cnm,1,1);
				
				$mipdf->Cell(30,10,"SR No.:",1,0,'C');
				$mipdf->Cell(100,10,"Event Detail",1,0,'C');
				$mipdf->Cell(60,10,"Amount",1,1,'C');
				
				
				for($a=1; $a<=7 ; $a++)
				{
					if($a==1)
					{
						$mipdf->Cell(30,10,$a,1,0,'R');
						$mipdf->Cell(100,10," ".$enm,1,0);
						$mipdf->Cell(60,10,$charge,1,1,'R');
					}
					else
					{
						$mipdf->Cell(30,10,$a,1,0,'R');
						$mipdf->Cell(100,10,"",1,0);
						$mipdf->Cell(60,10,"",1,1);
					}
				}
				
				$mipdf->Cell(130,10,"TOTAL ",1,0,'R');
				$mipdf->Cell(60,10,$charge,1,1,'R');
				
				$mipdf->Cell(130,10,"PAID AMOUNT ",1,0,'R');
				$mipdf->Cell(60,10,$cpaid,1,1,'R');	
				
				$mipdf->Cell(130,10,"REAMINING AMT ",1,0,'R');
				$mipdf->Cell(60,10,$ramt,1,1,'R');
				
				$mipdf->Cell(190,8,"",0,1);
				
				$mipdf->Cell(190,8," * Service Tax no: ACYPH0646KSD001 , PAN No.:ACYPH0646K ",0,1);
				$mipdf->Cell(190,8," * Category : Event Management & Promotions",0,1);
				$mipdf->Cell(190,8," * Payment to be done on the name of \"Red Carpet Events\" ",0,1);
				$mipdf->Cell(190,8,"   Through bank a/c no: 1002021001469 with The Textile Co-Op. Bank Of Surat Ltd. :  ",0,1);
				$mipdf->Cell(190,8,"   City light Road, Surat.   IFSC CODE FOR NEFT/RTGS: YESB0TCB003 ",0,1);
				$mipdf->Cell(190,8," *  [Subject to Surat jurisdiction]",0,1);
				$mipdf->Cell(190,4,"",0,1);
				
				$mipdf->Cell(130,8,"",0,0);
				$mipdf->Cell(60,8,"      Rahul Hathi",0,1,'C');	
				$mipdf->Cell(190,8,"   Email: rmhathi@redcarpetevents.co.in",0,1,'R');
				
				$mipdf->Output($fname,'F');				
				
				$date = date('Y-m-d H:i:s');
				updInvEM($conn,$id,$fname);
				insInvECID($conn,$id,$fname,$date,$_SESSION['USER_ID']);
				
				header('Location: upload/invoice/'.$fname);		
			}
			else
			{
				//echo "something!!!";
				//echo $data[$i]['inv_file_name'];
				$len = strlen($data[$i]['inv_file_name']) ;
				$pos = strpos($data[$i]['inv_file_name'],"_");
				$start = $pos + 1;
				$stop =  $len - 3;
				//echo $stop;
				
				
				$name = $data[$i]['inv_file_name'];
				echo substr($name,12,13);
				echo "<br>";
				echo substr("divyesh",2,4);
				
				
				exit;
				//$fname = $inm."-".$_POST['txteid']."_1.pdf";
				
				class Mipdf extends FPDF
				{
					function Header()
					{
						$this->SetFont("Arial","",12);
						
						$this->SetTextColor(255,255,255);
						$this->SetFillColor(140,140,140);
						$this->Cell(190,20,"Invoice",1,0,'C',true);
						$this->Image("images/8.png",10,10,20);
						$this->Ln(20);
					}
					function Footer()
					{
						$this->SetY(-20);
						
						$this->Cell(190,7,"Page No.".$this->PageNo()."/{nb}",1,0,'C');
					}
				}
				$mipdf = new Mipdf();
				$mipdf->AliasNBPages();
				$mipdf->addPage();
				
				$mipdf->Cell(130,10,"To: ".$cmp,1,0);
				$mipdf->Cell(60,10,$sdate,1,1,'C');
				
				$mipdf->Cell(130,10,"Event: ".$enm,1,0);
				$mipdf->Cell(60,10,"FP No.: ".$id,1,1);
				
				$mipdf->Cell(190,10,"Event Date: ".$fdate,1,1);
				
				$mipdf->Cell(130,10,"Vennue: ",1,0);
				$mipdf->Cell(60,10,"Invoice No.: ".$id,1,1);
				
				$mipdf->Cell(190,10,"Client: ".$cnm,1,1);
				
				$mipdf->Cell(30,10,"SR No.:",1,0,'C');
				$mipdf->Cell(100,10,"Event Detail",1,0,'C');
				$mipdf->Cell(60,10,"Amount",1,1,'C');
				
				
				for($a=1; $a<=7 ; $a++)
				{
					if($a==1)
					{
						$mipdf->Cell(30,10,$a,1,0,'R');
						$mipdf->Cell(100,10," ".$enm,1,0);
						$mipdf->Cell(60,10,$charge,1,1,'R');
					}
					else
					{
						$mipdf->Cell(30,10,$a,1,0,'R');
						$mipdf->Cell(100,10,"",1,0);
						$mipdf->Cell(60,10,"",1,1);
					}
				}
				
				$mipdf->Cell(130,10,"TOTAL ",1,0,'R');
				$mipdf->Cell(60,10,$charge,1,1,'R');
				
				$mipdf->Cell(130,10,"PAID AMOUNT ",1,0,'R');
				$mipdf->Cell(60,10,$cpaid,1,1,'R');	
				
				$mipdf->Cell(130,10,"REAMINING AMT ",1,0,'R');
				$mipdf->Cell(60,10,$ramt,1,1,'R');
				
				$mipdf->Cell(190,8,"",0,1);
				
				$mipdf->Cell(190,8," * Service Tax no: ACYPH0646KSD001 , PAN No.:ACYPH0646K ",0,1);
				$mipdf->Cell(190,8," * Category : Event Management & Promotions",0,1);
				$mipdf->Cell(190,8," * Payment to be done on the name of \"Red Carpet Events\" ",0,1);
				$mipdf->Cell(190,8,"   Through bank a/c no: 1002021001469 with The Textile Co-Op. Bank Of Surat Ltd. :  ",0,1);
				$mipdf->Cell(190,8,"   City light Road, Surat.   IFSC CODE FOR NEFT/RTGS: YESB0TCB003 ",0,1);
				$mipdf->Cell(190,8," *  [Subject to Surat jurisdiction]",0,1);
				$mipdf->Cell(190,4,"",0,1);
				
				$mipdf->Cell(130,8,"",0,0);
				$mipdf->Cell(60,8,"      Rahul Hathi",0,1,'C');	
				$mipdf->Cell(190,8,"   Email: rmhathi@redcarpetevents.co.in",0,1,'R');
				
				$mipdf->Output($fname,'F');
				
				//echo $id."<br/>";
				//echo $fname."<br/>";
				$date = date('Y-m-d H:i:s');
				//echo $date."<br/>";
				//echo $_SESSION['USER_ID'];
				
				updInvEM($conn,$id,$fname);
				insInvECID($conn,$id,$fname,$date,$_SESSION['USER_ID']);
				//exit;
				//header('Location:index.php?url=EVD');
				
				
				
				header('Location: upload/invoice/'.$fname);	
				
				
				
			}
		}
	}

exit;
	
	
	
?>
