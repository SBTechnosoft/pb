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
			var txtdisc = $('#txtdisc').val();
			
			
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
			
			//new event places detail
			
			var txtieqp = [];
			$.each($("input[name='txtieqp']"), function(){            
                 txtieqp.push($(this).val());
            });
			var txtirate = [];
			$.each($("input[name='txtirate']"), function(){            
                 txtirate.push($(this).val());
            });
			var txtiqty = [];
			$.each($("input[name='txtiqty']"), function(){            
                 txtiqty.push($(this).val());
            });
			var txtiamt = [];
			$.each($("input[name='txtiamt']"), function(){            
                 txtiamt.push($(this).val());
            });
			var txtistf = [];
			$.each($("input[name='txtistf']"), function(){            
                 txtistf.push($(this).val());
            });
			var txtivend = [];
			$.each($("input[name='txtivend']"), function(){            
                 txtivend.push($(this).val());
            });
			
			var txtivendprice = [];
			$.each($("input[name='txtivendprice']"), function(){            
                 txtivendprice.push($(this).val());
            });
			
			var txtiremark = [];
			$.each($("input[name='txtiremark']"), function(){            
                 txtiremark.push($(this).val());
            });
			
						
			var txtilength = [];
			$.each($("input[name='txtilength']"), function(){            
                 txtilength.push($(this).val());
            });
			
			var txtiwidth = [];
			$.each($("input[name='txtiwidth']"), function(){            
                 txtiwidth.push($(this).val());
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
			// if(paymentMode == "cheque")
			// {
				// if(txtbanknm == "" || txtchkno == "" )
				// {
					// alert("Fill Bank Detail");
					// return false;
				// }
				// if(!txtchkno.match(/^\d+/))
				// {
					// alert("Please Only Numeric characters For Cheque Number! (Allowed input:0-9)")
					// return false;
				// }
			// }
			if(txtvenue == "")
			{
				alert("Plz Provide Vennue Detail !!!");
				return false;
			}
			if( /[^a-zA-Z0-9\s\-\/]/.test( txtvenue ) ) 
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
				if(txtdisc=='')
				{
					var tax  =	(parseInt(txtcharge)* parseFloat(txtstax))/100;				
					var gtot =  (parseInt(txtcharge) ) + (parseInt(tax)) ;				
				}
				else
				{
					var tax =  ((parseInt(txtcharge) - parseInt(txtdisc)) * parseFloat(txtstax))/100;
					//var gtot =  (parseInt(txtcharge) + parseInt(tax)) - (parseInt(txtdisc)) ;
					var gtot =  (parseInt(txtcharge) - parseInt(txtdisc) ) + (parseInt(tax)) ;
				}
			}
			else
			{
				if(txtdisc=='')
				{
					var gtot = parseInt(txtcharge);
				}
				else
				{
					//var tax = 0;
					//var gtot =  (parseInt(txtcharge) + parseInt(tax)) - (parseInt(txtdisc)) ;
					var gtot =  (parseInt(txtcharge) - parseInt(txtdisc) )  ;
					//alert(tax);
				}
					
				
			}
			if( parseInt(gtot)  < parseInt(txtpaid) )
			{
				alert("You can't pay higher value of chargeble amount!!!");
				//return false;
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
					
					'txtieqp' : txtieqp,
					'txtirate' : txtirate,
					'txtiqty' : txtiqty,
					'txtiamt' : txtiamt,
					'txtistf' : txtistf,
					'txtivend' : txtivend,
					'txtivendprice' : txtivendprice,
					'txtiremark' : txtiremark,
					'txtilength' : txtilength,
					'txtiwidth'  : txtiwidth,
					'txtdisc'	: txtdisc,
					
				},
				success : function(re)
				{
					// if(re == 0)
					 // {
						 
						alert ("Inserted Data Successfully");
						$('#txteventnm').val('');
						$('#txtdisc').val('');
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
			var txtbillno = $('#txtbillno').val();
			var txtfpno = $('#txtfpno').val();
			
			var txtcharge	= 	$('#txtcharge').val();
			var txtstax =$('#txtstax').val();
			var txtdisc = $('#txtdisc').val();
			
			
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
			
			//new event places detail
			
			var txtieqp = [];
			$.each($("input[name='txtieqp']"), function(){            
                 txtieqp.push($(this).val());
            });
			var txtirate = [];
			$.each($("input[name='txtirate']"), function(){            
                 txtirate.push($(this).val());
            });
			var txtiqty = [];
			$.each($("input[name='txtiqty']"), function(){            
                 txtiqty.push($(this).val());
            });
			var txtiamt = [];
			$.each($("input[name='txtiamt']"), function(){            
                 txtiamt.push($(this).val());
            });
			var txtistf = [];
			$.each($("input[name='txtistf']"), function(){            
                 txtistf.push($(this).val());
            });
			var txtivend = [];
			$.each($("input[name='txtivend']"), function(){            
                 txtivend.push($(this).val());
            });
			
			var txtivendprice = [];
			$.each($("input[name='txtivendprice']"), function(){            
                 txtivendprice.push($(this).val());
            });
			
			var txtiremark = [];
			$.each($("input[name='txtiremark']"), function(){            
                 txtiremark.push($(this).val());
            });
			var txtilength = [];
			$.each($("input[name='txtilength']"), function(){            
                 txtilength.push($(this).val());
            });
			
			var txtiwidth = [];
			$.each($("input[name='txtiwidth']"), function(){            
                 txtiwidth.push($(this).val());
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
			// if(paymentMode == "cheque")
			// {
				// if(txtbanknm == "" || txtchkno == "" )
				// {
					// alert("Fill Bank Detail");
					// return false;
				// }
				// if(!txtchkno.match(/^\d+/))
				// {
					// alert("Please Only Numeric characters For Cheque Number! (Allowed input:0-9)")
					// return false;
				// }
			// }
			if(txtvenue == "")
			{
				alert("Plz Provide Vennue Detail !!!");
				return false;
			}
			if( /[^a-zA-Z0-9\s\-\/]/.test( txtvenue ) ) 
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
			// if(taxmode == 'Yes')
			// {
				// var tax =  (parseInt(txtcharge) * parseFloat(txtstax))/100;
				// var gtot =  (parseInt(txtcharge) + parseInt(tax)) ;
				
			
			// }
			// else
			// {
				// var tax = 0;
				// var gtot =  (parseInt(txtcharge) + parseInt(tax)) ;
				
			// }
			
			
			if(taxmode == 'Yes')
			{
				if(txtdisc=='')
				{
					var tax  =	(parseInt(txtcharge)* parseFloat(txtstax))/100;				
					var gtot =  (parseInt(txtcharge) ) + (parseInt(tax)) ;				
				}
				else
				{
					var tax =  ((parseInt(txtcharge) - parseInt(txtdisc)) * parseFloat(txtstax))/100;
					//var gtot =  (parseInt(txtcharge) + parseInt(tax)) - (parseInt(txtdisc)) ;
					var gtot =  (parseInt(txtcharge) - parseInt(txtdisc) ) + (parseInt(tax)) ;
				}
			}
			else
			{
				if(txtdisc=='')
				{
					var gtot = parseInt(txtcharge);
				}
				else
				{
					//var tax = 0;
					//var gtot =  (parseInt(txtcharge) + parseInt(tax)) - (parseInt(txtdisc)) ;
					var gtot =  (parseInt(txtcharge) - parseInt(txtdisc) )  ;
					//alert(tax);
				}
					
				
			}
			
			if( parseInt(gtot)  < parseInt(txtpaid) )
			{
				alert("You can't pay higher value of chargeble amount!!!");
				return false;
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
					'status' : 'enquiry',
					'eqp' : eqp,
					'stf' : stf,
					'tax' : tax,
					'gtot' : gtot,
					'txtstax' : txtstax,
					'txthall' : txthall,
					
					'txtieqp' : txtieqp,
					'txtirate' : txtirate,
					'txtiqty' : txtiqty,
					'txtiamt' : txtiamt,
					'txtistf' : txtistf,
					'txtivend' : txtivend,
					'txtivendprice' : txtivendprice,
					'txtiremark' : txtiremark,
					'txtilength' : txtilength,
					'txtiwidth'  : txtiwidth,
					'txtdisc'	: txtdisc,
				},
				success : function(re)
				{
					// if(re == 0)
					 // {
						 
						alert ("Inserted Enquiry Successfully");
						$('#txteventnm').val('');
						$('#txtdisc').val('');
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
						window.location.href = 'index.php?url=ENR';					
				}				
			});		
					
		});	

		function shownewEqp()
		{		
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'post',
				async : false,
				data : {
					'shownewEqp' : 1
					
				},
				success : function(r)
				{
					$('#drpneweqp').html(r);	
					
				}
				
			});
		}
		function shownewStf()
		{		
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'post',
				async : false,
				data : {
					'shownewStf' : 1
					
				},
				success : function(r)
				{
					$('#drpnewstf').html(r);	
					
				}
				
			});
		}
		function shownewVend()
		{		
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'post',
				async : false,
				data : {
					'shownewVend' : 1
					
				},
				success : function(r)
				{
					$('#drpnewvend').html(r);	
					
				}
				
			});
		}
		shownewEqp();
		shownewStf();
		shownewVend();
		
		$("#drpneweqp").on("change", function(){
			var eqpid    =   $('#drpneweqp').val();
			//alert( eqpid );
			$.ajax({
				url : './includes/newEventsPost.php',
				type : 'post',
				async : false,
				data : {
					'showeqpprice' : 1,
					'eqpid' : eqpid,
					
				},
				success : function(r)
				{
					$('#txtrate').val(r.price);
					$('#txtamt').val(r.price);
					$('#txthamt').val(r.price);
					$('#txttype').val(r.price_type);
					checkType();
				}
				
			});
		});
		
		$('#label1').hide();
		$('#label2').hide();
		$('#txtlength').hide();
		$('#txtwidth').hide();
		
		function checkType()
		{	
			var gettype = $('#txttype').val();
			
			if(gettype == 2)
			{
				$('#label1').show();
				$('#label2').show();
				$('#txtlength').show();
				$('#txtwidth').show();
			}
			else
			{
				$('#label1').hide();
				$('#label2').hide();
				$('#txtlength').hide();
				$('#txtwidth').hide();
			}
			
			
		}
		
		$("#txtlength").on("focusout", function(){
			var txtlength    =   $('#txtlength').val();
			
			// if(gettype == 2 && txtlength=="")
			// {
				// alert("Plz Insert The Length!!!");
				// return false;
			// }
			// if(txtlength != "")
			// {
				// if(isNaN(txtlength))
				// {
					// alert("Please Only Numeric Length!!! (Allowed input:0-9)")
					// return false;
				// }
				// if(txtlength == 0)
				// {
					// alert("Can't GIve length 0");
					// return false;
				// }
			// }
			
						
		});
		
		
		$("#txtwidth").on("focusout", function(){
			var txtlength    =   $('#txtlength').val();
			var txtwidth    =   $('#txtwidth').val();
			
			// if(gettype == 2 && txtwidth=="")
			// {
				// alert("Plz Insert The Width!!!");
				// return false;
			// }
			// if(txtwidth != "")
			// {
				// if(!txtwidth.match(/^\d+/))
				// {
					// alert("Please Only Numeric in width!!! (Allowed input:0-9)")
					// return false;
				// }
				// if(txtwidth == 0)
				// {
					// alert("Can't GIve Width 0");
					// return false;
				// }
			// }
			
			
			var sqfeet = parseInt(txtlength) * parseInt(txtwidth)
			
			var rate = $('#txtrate').val();	
			
			var tot = parseInt(sqfeet) * parseInt(rate);
			$('#txthamt').val(tot);
			$('#txtamt').val(tot);			
		});
		
		$("#txtrate").on("focusout", function(){
			
			var gettype = $('#txttype').val();
			//alert(gettype);
			var rate = $('#txtrate').val();	
			if(rate == "")
			{
				alert("Plz Insert The Rate!!!");
				return false;
			}
			if(rate != "")
			{
				if(isNaN(rate))
				{
					alert("Please Only Numeric in Rate!!! (Allowed input:0-9)")
					return false;
				}
				if(rate == 0)
				{
					alert("Can't GIve rate 0");
					return false;
				}
			}
			
			if(gettype == 2)
			{
				var txtlength    =   $('#txtlength').val();
				var txtwidth    =   $('#txtwidth').val();
				var sqfeet = parseInt(txtlength) * parseInt(txtwidth)
				
				var rate = $('#txtrate').val();	
				
				var tot = parseInt(sqfeet) * parseInt(rate);
				$('#txthamt').val(tot);
				$('#txtamt').val(tot);
			}
			else
			{
				var rate = $('#txtrate').val();	
				$('#txthamt').val(rate);
				$('#txtamt').val(rate);
			}
		});
		
		
		$("#drpqty").on("focusout", function(){
			var qty    =   $('#drpqty').val();
			if(qty == "")
			{
				alert("Plz Insert The qty!!!");
				return false;
			}
			if(qty != "")
			{
				if(isNaN(qty))
				{
					alert("Please Only Numeric in qty!!! (Allowed input:0-9)")
					return false;
				}
				if(qty == 0)
				{
					alert("Can't GIve qty 0");
					return false;
				}
			}
			
			var txthamt = $('#txthamt').val();			
			var tot = parseInt(qty) * parseInt(txthamt);			
			$('#txtamt').val(tot);			
		});
		
		function total()
		{
			// var amount = [];
            // $.each($('.amount'), function(){            
                // amount.push($(this).val());
            // });
			// alert (amount);
			
			
			// $('.amount').each(function(i,e){
				// var amount = $('.amount').val()-0;
				// amttot = parseInt(amttot) + parseInt(amount);
				// alert(amttot);
			// });
		}
		
		var i = 0; 
		$('#addeqp').on('click',function()
		{
			var eqpid = $('.drpneweqp').val();
			var eqpnm = document.getElementById("drpneweqp").options[(document.getElementById("drpneweqp").options.selectedIndex)].text;
			
			
			var rate = $('.txtrate').val();
			var qty = $('.drpqty').val();
			var amt = $('.txtamt').val();
			var staff = $('.drpnewstf').val();
			var staffnm = document.getElementById("drpnewstf").options[(document.getElementById("drpnewstf").options.selectedIndex)].text;
			var vend = $('.drpnewvend').val();
			var vendnm = document.getElementById("drpnewvend").options[(document.getElementById("drpnewvend").options.selectedIndex)].text;
			var vprice = $('.txtvprice').val();
			var reamrk = $('.txtremark').val();
			
			var length = $('.txtlength').val();
			var width = $('.txtwidth').val();
			var txttype = $('.txttype').val();
			// var x = document.getElementById("myFile").value;
			// alert (x);
			
			// var Gtot = [];
            // $.each($(".txtiamt"), function(){            
                // Gtot.push($(this).val());
            // });
			
			
			//return false;
			
			if(eqpid=='')
			{
				alert("Plz Select Equipment.");
				return false;
			}
			if(rate=='')
			{
				alert("Plz Fill Rate.");
				return false;
			}
			if(rate != "")
			{
				if(isNaN(rate))
				{
					alert("Please Only Numeric in rate!!! (Allowed input:0-9)")
					return false;
				}
				if(rate == 0)
				{
					alert("Can't Give rate 0");
					return false;
				}
			}
			if(qty=='')
			{
				alert("Plz Fill Qty.");
				return false;
			}
			if(qty != "")
			{
				if(isNaN(qty))
				{
					alert("Please Only Numeric in qty!!! (Allowed input:0-9)")
					return false;
				}
				if(qty == 0)
				{
					alert("Can't GIve qty 0");
					return false;
				}
			}
			if(txttype==2)
			{
				if(length=='')
				{
					alert("Plz Fill length.");
					return false;
				}
				if(width=='')
				{
					alert("Plz Fill width.");
					return false;
				}
			}
			if(length != "")
			{
				if(isNaN(length))
				{
					alert("Please Only Numeric in length!!! (Allowed input:0-9)")
					return false;
				}
				if(length == 0)
				{
					alert("Can't GIve length 0");
					return false;
				}
			}
			if(width != "")
			{
				if(isNaN(width))
				{
					alert("Please Only Numeric in width!!! (Allowed input:0-9)")
					return false;
				}
				if(width == 0)
				{
					alert("Can't GIve width 0");
					return false;
				}
			}
			
			
			// alert(eqpid);
			// alert(rate);
			// alert(qty);
			// alert(amt);
			// alert(staff);
			// alert(vend);
			
			i++;
			var div=
					//'<div id="eqrow'+i+'">'+					
					/*'<tr>'+
						'<input   type="hidden"  id="txtieqp" name="txtieqp" value="'+eqpid+'">'+
						'<td><input  type="text"  id="txtieqpnm" name="txtieqpnm" value="'+eqpnm+'"></td>'+
						'<td><input  type="text"  id="txtirate" name="txtirate" value="'+rate+'"></td>'+
						'<td><input  type="text"  id="txtiqty" name="txtiqty" value="'+qty+'"></td>'+
						'<td><input   type="text"  id="txtiamt" name="txtiamt" value="'+amt+'"></td>'+
						'<input   type="hidden"  id="txtistf" name="txtistf" value="'+staff+'">'+
						'<td><input  type="text"  id="txtistfnm" name="txtistfnm" value="'+staffnm+'"></td>'+
						'<input  type="hidden"  id="txtivend" name="txtivend" value="'+vend+'">'+
						'<td><input type="text"  id="txtivendnm" name="txtivendnm" value="'+vendnm+'"></td>'+
						'<td><input  type="text"  id="txtivendprice" name="txtivendprice" value="'+vprice+'"></td>'+
						'<td><input   type="text"  id="txtiremark" name="txtiremark" value="'+reamrk+'"></td>'+						
						'<td><a class="remove" id="'+i+'" style= "cursor:pointer; margin-left:15px;">'+
							'<i class="fa fa-times" aria-hidden="true"></i>'+							
						'</a></td>'+
					'</tr>';*/
					
					'<tr id="eqrow'+i+'">'+
						'<input   type="hidden"  id="txtieqp" name="txtieqp" value="'+eqpid+'">'+
						'<input  type="hidden"  id="txtieqpnm" name="txtieqpnm" value="'+eqpnm+'">'+
						'<input  type="hidden"  id="txtirate" name="txtirate" value="'+rate+'">'+
						'<input  type="hidden"  id="txtiqty" name="txtiqty" value="'+qty+'">'+
						'<input   type="hidden" class="txtiamt" id="txtiamt" name="txtiamt" value="'+amt+'">'+
						'<input   type="hidden"  id="txtistf" name="txtistf" value="'+staff+'">'+
						'<input  type="hidden"  id="txtistfnm" name="txtistfnm" value="'+staffnm+'">'+
						'<input  type="hidden"  id="txtivend" name="txtivend" value="'+vend+'">'+
						'<input type="hidden"  id="txtivendnm" name="txtivendnm" value="'+vendnm+'">'+
						'<input  type="hidden"  id="txtivendprice" name="txtivendprice" value="'+vprice+'">'+
						'<input   type="hidden"  id="txtiremark" name="txtiremark" value="'+reamrk+'">'+
						'<input  type="hidden"  id="txtilength" name="txtilength" value="'+length+'">'+
						'<input   type="hidden"  id="txtiwidth" name="txtiwidth" value="'+width+'">'+
						
						
						
						'<td>'+ eqpnm+'</td>'+
						'<td>'+ rate+'</td>'+
						'<td>'+ qty+'</td>'+
						'<td class="amount">'+ amt+'</td>'+						
						'<td>'+ staffnm+'</td>'+						
						'<td>'+ vendnm+'</td>'+
						'<td>'+ vprice+'</td>'+
						'<td>'+ reamrk+'</td>'+	
						'<td><input type="file" id="fimg'+i+'" name="fimg'+i+'[]" multiple /></td>'+	
						'<td><a class="remove" id="'+i+'" style= "cursor:pointer; margin-left:15px;">'+
							'<i class="fa fa-times" aria-hidden="true"></i>'+							
						'</a></td>'+
					'</tr>';
					
					//'</div>';
			$('#eqprec').append(div);
			
			//total();
			// var gtot = [];
			// var gtot = $('.txtiamt').val();
			// alert(gtot);
			
			var gtot = [];
            $.each($('.txtiamt'), function(){            
                gtot.push($(this).val());
            });
			//alert (gtot);		
			

			var total_amt = 0;
			$.each(gtot,function() {
				total_amt += parseInt(this);
			});
			//alert(total_amt);
			
			
			
			$('.drpneweqp').val('');
			$('.txtrate').val('');
			$('.drpqty').val('1');
			$('.txtamt').val('');
			$('.drpnewstf').val('');
			$('.drpnewvend').val('');
			$('.txtvprice').val('');
			$('.txtremark').val('');
			$('.txtlength').val('');
			$('.txtwidth').val('');
			$('#label1').hide();
			$('#label2').hide();
			$('#txtlength').hide();
			$('#txtwidth').hide();
			$('.txtcharge').val(total_amt);
			
		});
		$(document).on('click','.remove',function(){
			var button_id = $(this).attr("id");
			$("#eqrow"+button_id+"").remove();
				var gtot = [];
				$.each($('.txtiamt'), function(){            
					gtot.push($(this).val());
				});
				//alert (gtot);		
			

				var total_amt = 0;
				$.each(gtot,function() {
					total_amt += parseInt(this);
				});
				//alert(total_amt);
			$('.txtcharge').val(total_amt);
		});
	});	