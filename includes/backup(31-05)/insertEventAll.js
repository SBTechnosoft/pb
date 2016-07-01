	$( function() 
	{		
		//save data
		
		$('#newaddevent').click(function()
		{
			
			
			
			var txteventnm    =   $('#txteventnm').val();
			var txteventds     =   $('#txteventds').val();	
			var txtclnm     =   $('#txtclnm').val();
			var txtclcmp    =   $('#txtclcmp').val();
			var txtclemail     =   $('#txtclemail').val();	
			var txtworkmob     =   $('#txtworkmob').val();
			var txthmmob    =   $('#txthmmob').val();
			var txtmob    =   $('#txtmob').val();
			var txtfromdt =	  $('#txtfromdt').val();
			
			var txttodt = 	$('#txttodt').val();
			var drpcmpnm = $('#drpcmpnm').val();			
			var taxmode = $('#taxmode').val();
			var txtbillno = $('#txtbillno').val();
			var txtfpno = $('#txtfpno').val();
			
			var txtcharge	= 	$('#txtcharge').val();
			var txtstax =$('#txtstax').val();
			
			
			
			//now inserting next table			
			var txtvenue = [];
			$.each($("input[name='txtvenue']"), function(){            
                 txtvenue.push($(this).val());
            });
			//alert(txtvenue);
			
			var txthall = [];
			$.each($("input[name='txthall']"), function(){            
                 txthall.push($(this).val());
            });
			
			var txtldmark = [];
			$.each($("input[name='txtldmark']"), function(){            
                 txtldmark.push($(this).val());
            });
			//alert(txtldmark);
			
			var txtfromdate = [];
			$.each($("input[name='txtfromdate']"), function(){            
                 txtfromdate.push($(this).val());
            });
			//alert(txtfromdate);
			
			var txttodate = [];
			$.each($("input[name='txttodate']"), function(){            
                 txttodate.push($(this).val());
            });
			//alert(txttodate);
			
			//return false;
			
			//var txtvenue    =   $('#txtvenue').val();	
			// var txtldmark    =   $('#txtldmark').val();
			// var txtfromdate   =   $('#txtfromdate').val();
			// var txttodate    =   $('#txttodate').val();
			
			
			
			var txtpaid     =   $('#txtpaid').val();
			
			var paymentMode =   $('#paymentMode').val();
			var txtbanknm   =   $('#txtbanknm').val();
			var txtchkno    =   $('#txtchkno').val();
			
			
			
			// now inserting into equip dtl
			
			// var eqp = new Array();
			var eqp = [];
            $.each($("input[name='eqp']:checked"), function(){            
                eqp.push($(this).val());
            });
			
			var stf = [];
            $.each($("input[name='stf']:checked"), function(){            
                stf.push($(this).val());
            });
			
			
			if(txteventnm == "" )
			{
				alert('Plz Fill Event Name ');
				return false;
			}
			var emailPattern="^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
			var regex=new RegExp(emailPattern);
			
			if(txtclemail != "")
			{
				if(!regex.test(txtclemail))
				{
					txtclemail="";
					alert("Please Enter Valid E-mail Address.");			
					return false;
				}
			}
			if(txtworkmob == "" && txthmmob == "" && txtmob	 == "" )
			{
				alert('Plz Provide At Least One Mobile Number.');
				return false;
			}
			if(txtworkmob!= "")
			{
				if(!txtworkmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Work Number! (Allowed input:0-9)")
					return false;
				}
				if(txtworkmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txthmmob!= "")
			{
				if(!txthmmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Home Number! (Allowed input:0-9)")
					return false;
				}
				if(txthmmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txtmob!= "")
			{
				if(!txtmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Mobile Number! (Allowed input:0-9)")
					return false;
				}
				if(txtmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txtcharge=="")
			{
				alert("Plz Insert The Client Charges For Event Mgt!!!");
				return false;
			}
			if(txtcharge != "")
			{
				if(!txtcharge.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Charge! (Allowed input:0-9)")
					return false;
				}
				if(txtcharge == 0)
				{
					alert("Can't GIve Charge 0");
					return false;
				}
			}
			if(paymentMode == "cheque")
			{
				if(txtbanknm == "" || txtchkno == "" )
				{
					alert("Fill Bank Detail");
					return false;
				}
				if(!txtchkno.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Cheque Number! (Allowed input:0-9)")
					return false;
				}
			}
			if(txtvenue == "")
			{
				alert("Plz Provide Vennue Detail !!!");
				return false;
			}
			if( /[^a-zA-Z0-9\-\/]/.test( txtvenue ) ) 
			{
				alert('Dont Use Special Character!!! Like!@$');
				return false;
			}
			if( /[^a-zA-Z0-9\-\/]/.test( txtbillno ) ) 
			{
				alert('Dont Use Special Character!!! Like!@$');
				return false;
			}
			if( /[^a-zA-Z0-9\-\/]/.test( txtfpno ) ) 
			{
				alert('Dont Use Special Character!!! Like!@$');
				return false;
			}
			if(taxmode == 'Yes')
			{
				var tax =  (parseInt(txtcharge) * parseFloat(txtstax))/100;
				var gtot =  (parseInt(txtcharge) + parseInt(tax)) ;
				//alert(tax);
				//alert(gtot);
			
			}
			else
			{
				var tax = 0;
				var gtot =  (parseInt(txtcharge) + parseInt(tax)) ;
				//alert(tax);
				//alert(gtot);
			}
			//return false;
			
			//alert (eqp);
            //alert("My favourite sports are: " + eqp.join(", "));
			
			
			//var eqp = $('#eqp').val();
			//var eqp =  $("input:checked").each(function() {  data['eqp[]'].push($(this).val());	});
			//alert (eqp);
			
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'POST',
				async : false,
				data : {
					'saverecord'  : 1,
					'txteventnm'   : txteventnm,
					'txteventds'  : txteventds,	
					'txtclnm'  : txtclnm,
					'txtclcmp'   : txtclcmp,
					'txtclemail'  : txtclemail,	
					'txtworkmob'  : txtworkmob,
					'txthmmob'   : txthmmob,
					'txtmob'  : txtmob,
					
					'txtfpno'  :txtfpno,
					'txtbillno' : txtbillno,
					
					'txtcharge' : txtcharge,
					'txtpaid'   : txtpaid,
					
					'paymentMode': paymentMode,
					'txtbanknm' : txtbanknm,
					'txtchkno'  : txtchkno,
					
					'txtfromdt'	: txtfromdt,
					'txttodt'	: txttodt,
					'drpcmpnm'	:drpcmpnm,
					'taxmode'	:taxmode,
					'txtvenue'  : txtvenue,	
					'txtldmark'   : txtldmark,
					'txtfromdate'  : txtfromdate,
					'txttodate'   : txttodate,
					'status' : 'new',
					'eqp' : eqp,
					'stf' : stf,
					'tax' : tax,
					'gtot' : gtot,
					'txtstax' : txtstax,
					'txthall' : txthall,
					
				},
				success : function(re)
				{
					// if(re == 0)
					 // {
						 
						alert ("Inserted Data Successfully");
						$('#txteventnm').val('');
						$('#txteventds').val('');
						$('#txtclnm').val('');
						$('#txtclcmp').val('');
						$('#txtclemail').val('');
						$('#txtworkmob').val('');
						$('#txthmmob').val('');
						$('#txtmob').val('');
						
						$('#txtfpno').val('');
						$('#txtbillno').val('');
						
						$('#txtfromdt').val('');
						$('#txttodt').val('');
						
						$('#txtvenue').val('');
						$('#txthall').val('');
						$('#txtldmark').val('');
						$('#txtcharge').val('');
						$('#txtpaid').val('');
						
						$('#paymentMode').val('');
						$('#txtbanknm').val('');
						$('#txtchkno').val('');
						//$('eqp').val('');
						window.location.href = 'index.php?url=EVD';					
				}				
			});	
					
		});	
			
		$('#newaddenquiry').click(function()
		{
			
			
			var txteventnm    =   $('#txteventnm').val();
			var txteventds     =   $('#txteventds').val();	
			var txtclnm     =   $('#txtclnm').val();
			var txtclcmp    =   $('#txtclcmp').val();
			var txtclemail     =   $('#txtclemail').val();	
			var txtworkmob     =   $('#txtworkmob').val();
			var txthmmob    =   $('#txthmmob').val();
			var txtmob    =   $('#txtmob').val();
			var txtfromdt =	  $('#txtfromdt').val();
			
			var txttodt = 	$('#txttodt').val();
			var drpcmpnm = $('#drpcmpnm').val();			
			var taxmode = $('#taxmode').val();
			
			
			//now inserting next table			
			var txtvenue = [];
			$.each($("input[name='txtvenue']"), function(){            
                 txtvenue.push($(this).val());
            });
			//alert(txtvenue);
			
			var txthall = [];
			$.each($("input[name='txthall']"), function(){            
                 txthall.push($(this).val());
            });
			
			var txtldmark = [];
			$.each($("input[name='txtldmark']"), function(){            
                 txtldmark.push($(this).val());
            });
			//alert(txtldmark);
			
			var txtfromdate = [];
			$.each($("input[name='txtfromdate']"), function(){            
                 txtfromdate.push($(this).val());
            });
			//alert(txtfromdate);
			
			var txttodate = [];
			$.each($("input[name='txttodate']"), function(){            
                 txttodate.push($(this).val());
            });
			//alert(txttodate);
			
			//return false;
			
			//var txtvenue    =   $('#txtvenue').val();	
			// var txtldmark    =   $('#txtldmark').val();
			// var txtfromdate   =   $('#txtfromdate').val();
			// var txttodate    =   $('#txttodate').val();
			
			
			var txtcharge	= 	$('#txtcharge').val();
			var txtpaid     =   $('#txtpaid').val();
			
			var paymentMode =   $('#paymentMode').val();
			var txtbanknm   =   $('#txtbanknm').val();
			var txtchkno    =   $('#txtchkno').val();
			// now inserting into equip dtl
			
			// var eqp = new Array();
			var eqp = [];
            $.each($("input[name='eqp']:checked"), function(){            
                eqp.push($(this).val());
            });
			
			var stf = [];
            $.each($("input[name='stf']:checked"), function(){            
                stf.push($(this).val());
            });
			
			
			if(txteventnm == "" )
			{
				alert('Plz Fill Event Name ');
				return false;
			}
			var emailPattern="^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
			var regex=new RegExp(emailPattern);
			
			if(txtclemail != "")
			{
				if(!regex.test(txtclemail))
				{
					txtclemail="";
					alert("Please Enter Valid E-mail Address.");			
					return false;
				}
			}
			if(txtworkmob == "" && txthmmob == "" && txtmob	 == "" )
			{
				alert('Plz Provide At Least One Mobile Number.');
				return false;
			}
			if(txtworkmob!= "")
			{
				if(!txtworkmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Work Number! (Allowed input:0-9)")
					return false;
				}
				if(txtworkmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txthmmob!= "")
			{
				if(!txthmmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Home Number! (Allowed input:0-9)")
					return false;
				}
				if(txthmmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txtmob!= "")
			{
				if(!txtmob.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Mobile Number! (Allowed input:0-9)")
					return false;
				}
				if(txtmob.length != 10)
				{
					alert("At least 10 Digit");
					return false;
				}
			}
			if(txtcharge=="")
			{
				alert("Plz Insert The Client Charges For Event Mgt!!!");
				return false;
			}
			if(txtcharge != "")
			{
				if(!txtcharge.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Charge! (Allowed input:0-9)")
					return false;
				}
				if(txtcharge == 0)
				{
					alert("Can't GIve Charge 0");
					return false;
				}
			}
			if(paymentMode == "cheque")
			{
				if(txtbanknm == "" || txtchkno == "" )
				{
					alert("Fill Bank Detail");
					return false;
				}
				if(!txtchkno.match(/^\d+/))
				{
					alert("Please Only Numeric characters For Cheque Number! (Allowed input:0-9)")
					return false;
				}
			}
			if(txtvenue == "")
			{
				alert("Plz Provide Vennue Detail !!!");
				return false;
			}
			if( /[^a-zA-Z0-9\-\/]/.test( txtvenue ) ) 
			{
				alert('Dont Use Special Character!!! Like!@$');
				return false;
			}
			
			//alert (eqp);
            //alert("My favourite sports are: " + eqp.join(", "));
			
			
			//var eqp = $('#eqp').val();
			//var eqp =  $("input:checked").each(function() {  data['eqp[]'].push($(this).val());	});
			//alert (eqp);
			
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'POST',
				async : false,
				data : {
					'saverecord'  : 1,
					'txteventnm'   : txteventnm,
					'txteventds'  : txteventds,	
					'txtclnm'  : txtclnm,
					'txtclcmp'   : txtclcmp,
					'txtclemail'  : txtclemail,	
					'txtworkmob'  : txtworkmob,
					'txthmmob'   : txthmmob,
					'txtmob'  : txtmob,
					
					'txtcharge' : txtcharge,
					'txtpaid'   : txtpaid,
					
					'paymentMode': paymentMode,
					'txtbanknm' : txtbanknm,
					'txtchkno'  : txtchkno,
					
					'txtfromdt'	: txtfromdt,
					'txttodt'	: txttodt,
					'drpcmpnm'	:drpcmpnm,
					'taxmode'	:taxmode,
					'txtvenue'  : txtvenue,	
					'txtldmark'   : txtldmark,
					'txtfromdate'  : txtfromdate,
					'txttodate'   : txttodate,
					'status' : 'enquiry',
					'eqp' : eqp,
					'stf' : stf,
					'txthall' : txthall,
					
				},
				success : function(re)
				{
					// if(re == 0)
					 // {
						 
						alert ("Inserted Enquiry Successfully");
						$('#txteventnm').val('');
						$('#txteventds').val('');
						$('#txtclnm').val('');
						$('#txtclcmp').val('');
						$('#txtclemail').val('');
						$('#txtworkmob').val('');
						$('#txthmmob').val('');
						$('#txtmob').val('');
						$('#txtfromdt').val('');
						$('#txttodt').val('');
						
						$('#txtvenue').val('');
						$('#txthall').val('');
						$('#txtldmark').val('');
						$('#txtcharge').val('');
						$('#txtpaid').val('');
						
						$('#paymentMode').val('');
						$('#txtbanknm').val('');
						$('#txtchkno').val('');
						window.location.href = 'index.php?url=ENR';						
											
					// }					
				}				
			});	
					
		});		
			
	});	