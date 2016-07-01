<!-- BEGIN PAGE -->
<div class="page-content">
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"></button>
            <h3>portlet Settings</h3>
        </div>
        <div class="modal-body">
            <p>Here will be a configuration form</p>
        </div>
    </div>
    <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
					Events<small> New</small> 
				</h3>
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.php">Home</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">Add Event </a>
                    </li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row-fluid">
			<div class="row-fluid">
				<div class="span8 booking-search">
					<h4>Event Details </h4><hr/>
					<form action="#" name="Form" class="form-horizontal" role="form" >
						<div class="clearfix margin-bottom-10">
							Event Name <font color="red">*</font> 
							<div class="input-icon left">
								<input type="text" class="large m-wrap" id="txteventnm" name="txteventnm"  />
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="txteventds">Description</label>
							<div class="input-icon left">
								<input class="large m-wrap" id="txteventds" name="txteventds" type="text" />
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="">Company</label>
							<div class="input-icon left">
								<select name="drpcmpnm" id="drpcmpnm" class="large m-wrap"> 
									
								</select>
							</div>
						</div>
						</br>
						<h4>Client Details </h4>
						<hr />
						<div class="clearfix margin-bottom-10">
							<label for="txtclnm">Client Name </label>
							<div class="input-icon left">
								<input type="text" id="txtclnm" name="txtclnm"  class="m-wrap" />
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="txtclcmp">Client Company </label>
							<div class="input-icon left">
								<input class="m-wrap" id="txtclcmp" name="txtclcmp" type="text" />
							</div>
						</div>
						
						<div class="clearfix margin-bottom-10">
							<label for="txtmob">FP No. </label>
							<div class="input-icon left">
								<input type="text" id="txtfpno" name="txtfpno" class="m-wrap" />
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="txtmob">Bill No. </label>
							<div class="input-icon left">
								<input type="text" id="txtbillno" name="txtbillno" class="m-wrap" />
							</div>
						</div>
						
						
						<div class="clearfix margin-bottom-10">
							<label for="txtclemail">Email ID <font color="red">*</font></label>
							<div class="input-icon left">
								<input type="text" class="m-wrap" id="txtclemail" name="txtclemail" placeholder="Eg; www.siliconbrain.com"/>
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<div class="pull-left margin-right-20">
								<label for="txtworkmob">Work</label>
								<div class="input-icon left">
									<input type="text" id="txtworkmob" name="txtworkmob" class="m-wrap" placeholder="Eg; +919858784525"/>
								</div>
							</div>
							<div class="pull-right margin-right-20">
								<label for="txthmmob" class="well1">Home</label>
								<div class="input-icon left">
									<input type="text" id="txthmmob" name="txthmmob" class="m-wrap" />
								</div>
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="txtmob">Mobile <font color="red">*</font></label>
							<div class="input-icon left">
								<input type="text" id="txtmob" name="txtmob" class="m-wrap" />
							</div>
						</div>
						
						
						
						<div class="">
							<div class="clearfix margin-bottom-10">
							<div class="pull-left margin-right-20">
								<label for="txtfromdt">From Date </label>
								<div id="datetimepicker1" class="input-append date">
									<input data-format="yyyy-MM-dd hh:mm:ss" class="m-wrap" value="<?php echo Date;?>" type="text" name="txtfromdt" id="txtfromdt"></input>
									<span class="add-on">
									  <i class="icon-time" class="icon-calendar"></i>
									</span>
								</div>
							</div>
							<div class="pull-right margin-right-20">
								<label for="txttodt" class="well1">To Date </label> 
								<div id="datetimepicker2" class="input-append date">
									<input data-format="yyyy-MM-dd hh:mm:ss" class="m-wrap" value="<?php echo Date;?>" type="text" name="txttodt" id="txttodt"></input>
									<span class="add-on">
									  <i class="icon-time" class="icon-calendar"></i>
									</span>
								</div>
							</div>	
							</div>
							
						</div>
						<br />
						<div id= "multiinsert">
							<div id="dynamic_field">
								<h4>
									Event places 
									<a name="add" id="add" class="btn blue event">
										<i class="icon-plus"></i>								
									</a>									
								</h4>
								<hr />
								<div class="clearfix margin-bottom-10">
									<label for="txtvenue">Venue </label>
									<div class="input-icon left">
										<input class="m-wrap" id="txtvenue" name="txtvenue" type="text"  />
									</div>
								</div>
								<div class="clearfix margin-bottom-10">
									<label for="txthall">Hall </label>
									<div class="input-icon left">
										<input class="m-wrap" id="txthall" name="txthall" type="text"  />
									</div>
								</div>
								<div class="clearfix margin-bottom-10">
									<label for="txtldmark">Land Mark </label>
									<div class="input-icon left">
										<input class="m-wrap" id="txtldmark" name="txtldmark" type="text" />
									</div>
								</div>
								<div class="clearfix margin-bottom-10">
									<div class="pull-left margin-right-20">
										<label for="txtfromdate">From Date </label>
										<div id="datetimepickerPF" class="input-append date">
											<input data-format="yyyy-MM-dd hh:mm:ss" class="m-wrap" value="<?php echo Date;?>" type="text" name="txtfromdate" id="txtfromdate"></input>
											<span class="add-on">
											  <i class="icon-time" class="icon-calendar"></i>
											</span>
										</div>
									</div>
									<div class="pull-right margin-right-20">
									<label for="txttodate" class="well1">To Date </label>
									<div id="datetimepickerPT" class="input-append date">
										<input data-format="yyyy-MM-dd hh:mm:ss" type="text" class="m-wrap" value="<?php echo Date;?>" name="txttodate" id="txttodate"></input>
										<span class="add-on">
										  <i class="icon-time" class="icon-calendar"></i>
										</span>
									</div>
									</div>									
								</div>
								<div class="clearfix margin-bottom-10">
									<label for="eqpdrp">Equipment</label>
									<div class="multiselect input-icon left">
										<div class="selectBox" id="eqpdrp" >
											<select>
												<option>Select an option</option>
											</select>
											<div class="overSelect"></div>
										</div>
										<div id="checkboxEqp" class="checkboxesEqp">																	
										</div>
										
									</div>
								</div>
								<div class="clearfix margin-bottom-10">
									<label for="stfdrp">Staff</label>
									<div class="multiselect input-icon left">
										<div class="selectBox" id="stfdrp" >
											<select>
												<option>Select an option</option>
											</select>
											<div class="overSelect"></div>
										</div>
										<div id="checkboxStf" class="checkboxesStf">																	
										</div>
									</div>
								</div>
							</div>
						</div>
						
						</br>
						<h4>Payment Details </h4>
						<hr />
						<div class="clearfix margin-bottom-10">
							<label for="txtcharge">Client Charge </label>
							<div class="input-icon left">
								<input type="text" id="txtcharge" name="txtcharge" class="m-wrap" />
							</div>
						</div>
						<div class="clearfix margin-bottom-10">
							<label for="txtpaid">Paid Amount / Advance </label>
							<div class="input-icon left">
								<input type="number" id="txtpaid" name="txtpaid" class="m-wrap" />
							</div>
						</div>
						<div class="clearfix margin-bottom-10" >
							<label for="paymentMode">Payment Mode </label>
							<div class="input-icon left">
								<select name="paymentMode" id="paymentMode" onchange='ShowHideDiv();'> 
									<option value="cash">Cash</option>
									<option value="cheque">Cheque</option>
								</select>
							</div>
						</div>
						<div class="clearfix margin-bottom-10" id="showHide" style="display:none;">
							<div class="pull-left margin-right-20">
								<label for="txtbanknm">Bank Name</label>
								<div class="input-icon left">
									<input type="text" id="txtbanknm" name="txtbanknm" class="m-wrap" />
								</div>
							</div>
							<div class="pull-right margin-right-20">
								<label for="txtchkno" class="well1">Cheque No</label>
								<div class="input-icon left">
									<input type="text" id="txtchkno" name="txtchkno" class="m-wrap" />
								</div>
							</div>
						</div>
						<div class="clearfix margin-bottom-10" >
							<label for="">Service Tax Applicability </label>
							<div class="input-icon left">
								<select name="taxmode" id="taxmode" > 
									<option select="selected" value="No">No</option>
									<option value="Yes">Yes</option>
								</select>
							</div>
						</div>
						<input type="hidden" id="txtstax" name="txtstax" value=""/>
						<br/>
						
						<div class="right-side">
							<a class="btn blue" id="newaddevent">SAVE <i class="icon-download"></i></a>
							<a class="btn blue" id="newaddenquiry">ENQUIRY <i class="icon-download"></i></a>
							<button type="reset" class="btn blue">CANCEL <i class="icon-remove-sign"></i></button>
						</div>
						<!--input type="submit" value="SUBMIT"/-->
					</form>
				</div>
			</div>
		<!-- END PAGE CONTENT-->
		</div>
	<!-- END PAGE CONTAINER-->
    </div>
	<!-- END CONTAINER -->  
</div>
<!-- END PAGE -->
<!--
function selectall(master,cn)
	{
		var cbarray = document.getElementsByClassName(cn);
		for(var i = 0; i < cbarray.length ; i++)
		{
			var cb = document.getElementById(cbarray[i].id);
			cb.checked = master.checked;
		}
	}
	
	onchange="selectall(this,\'chkall\')"
	
	
	
	 function showCheckboxes(master,cn) {
        var checkboxes = document.getElementsByClassName(cn);
        for(var i = 0; i < checkboxes.length ; i++)
		{
			if (!expanded) {
				checkboxes.style.display = "block";
				expanded = true;
			} else {
				checkboxes.style.display = "none";
				expanded = false;
			}
		}
    }
	onclick="showCheckboxes1(this,selectBox)"
	
-->