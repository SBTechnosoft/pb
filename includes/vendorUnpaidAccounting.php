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
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
			Vendors <small> Unpaid Account</small>
		</h3>
        <ul class="breadcrumb">
            <li>
                <i class="icon-home"></i>
                <a href="index.php">Home</a>
                <i class="icon-angle-right"></i>
            </li>
            <li>
                <a href="#">Accounting </a>
                <i class="icon-angle-right"></i>
            </li>
            <li>
                <a href="#">Vendors Unpaid Accounts</a>
            </li>
            <li class="pull-right no-text-shadow">
                <div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
                    <i class="icon-calendar"></i>
                    <span></span>
                    <i class="icon-angle-down"></i>
                </div>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
		
			<div class="pull-left margin-right-20">
				<label for="txtbanknm">Total</label>
				<div class="input-icon left">
					<input type="text" id="totvamt" name="totvamt" class="m-wrap" readonly/>
				</div>
			</div>
			
			<div style="margin-left:300px;">
				<label for="txtchkno" class="well1">Payment Mode</label>
				<div class="input-icon left">
					<select name="paymentMode" id="paymentMode" class="m-wrap" onchange='ShowHideDiv();'> 
						<option value="cash">Cash</option>
						<option value="cheque">Cheque</option>
					</select>
				</div>
					
			</div>
			
			
			
			<!--div class="pull-left margin-right-20">
				<label for="txtbanknm"></label>
				<div class="input-icon left">
					<a id="massPay" class="btn green" >
				Payment
				<i class="icon-plus-sign icon-white"></i>
				</a>
				</div>
			</div-->
			
			
		
		<!--div>
			 Total 
				<input type="text" id="totvamt" name="totvamt" class="small wrap" readonly/>		
			
			Payment Mode 			
				<select name="paymentMode" id="paymentMode" class="small wrap" onchange='ShowHideDiv();'> 
					<option value="cash">Cash</option>
					<option value="cheque">Cheque</option>
				</select>
			
		</div-->
		
		<div class="clearfix margin-bottom-10" id="showHide" style="display:none;">
			<div class="pull-left margin-right-20">
				<label for="txtbanknm">Bank Name</label>
				<div class="input-icon left">
					<input type="text" id="txtbanknm" name="txtbanknm" class="m-wrap" />
				</div>
			</div>
			<div style="margin-left:300px;">
				<label for="txtchkno" class="well1">Cheque No</label>
				<div class="input-icon left">
					<input type="text" id="txtchkno" name="txtchkno" class="m-wrap" />
				</div>
			</div>
		</div>
		
		<a id="massPay" class="btn green" style="margin-bottom:10px;">
			Payment
			<i class="icon-plus-sign icon-white"></i>
			</br>
		</a>
		
		
		
        <div class="tabbable tabbable-custom tabbable-full-width">
            <div class="tab-content">
                <div id="tab_1_2" class="tab-pane active">
				
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-remove-sign"></i>Vendors Unpaid Account</div>
								
								<a class="invoice invoice_excel"  id="vunpaidexcel" >
									<i class="fa fa-file-excel-o fa-2x" style="color:white; margin-top:10%;" aria-hidden="true"></i>
								</a>
								
                        </div>
                        <div class="portlet-body">
								
							<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
                                <thead>
                                    <tr>
                                        <!--th> Event Vendor Id</th-->
                                        <th> Event Id </th>
                                        <!--th>Event Places Id </th>
                                        <th>Vendor Id</th-->
										<th>Vendor Name</th>
										<th>Vendor Company</th>
                                        <th>Vendor Charges</th>
                                        <th>Vendor Paid Amt</th>
                                        <th>Remaining Amt</th>
										<th>Action </th>
                                    </tr>
                                </thead>
                                <tbody id="show_unpaid_trn">
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--end tab-pane-->
                
                <!-- End tab pane -->
            </div>
        </div>
		<div id="totvdamt">
		
		</div>
		
        <!--end tabbable-->
        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE CONTAINER-->
</div>
<!-- END PAGE -->