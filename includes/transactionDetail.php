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
			Accounting <small> Transaction</small>
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
                <a href="#">Transaction</a>
            </li>
            <li class="pull-right no-text-shadow">
                <div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
                    <i class="icon-calendar"></i>
                    <span></span>
                    <i class="icon-angle-down"></i>
                </div>
            </li>
			<li id="search_btn">
				<button type="button" class="btn green" data-toggle="tooltip" title="Search">
					<i class="icon-search m-icon-white"></i>
				</button>
			</li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
		
		<div id="search_form" class="row-fluid search-forms search-default">
            <form class="form-search" action="#">
                <div class="chat-form">
                    <div class="input-cont">
                        <input type="text" id="txtename" name="txtename" placeholder="Eg; Event Name..." class="m-wrap" />						
                    </div>
				</div>
				</br>
				<div class="chat-form">
                    <div class="input-cont">
                        <select name="drpcmpnm" id="drpcmpnm" class="large m-wrap"> 
									
						</select>						
                    </div>
				</div>
				</br>
				<div class="chat-form">
                    <div class="input-cont">
                        <input type="text" id="txtclname" name="txtclname" placeholder="Eg; Client Name..." class="m-wrap" />						
                    </div>
				</div>
				</br>
				<div class="chat-form">
                    <div class="input-cont">
                        <input type="text" id="txtfpno" name="txtfpno" placeholder="Eg; FP.No...." class="m-wrap" />						
                    </div>
				</div>
				</br>
				<div class="chat-form">
                    <div class="input-cont">
                        <input type="text" id="txtbillno" name="txtbillno" placeholder="Eg; Bill No...." class="m-wrap" />						
                    </div>
				</div>
				</br>
				<div class="chat-form">
                    <div class="input-cont">
                        <input type="text" id="txtfromdt" name="txtfromdt" placeholder="Eg; From Date..." class="m-wrap" />						
                    </div>
				</div>
				</br>
				<div class="chat-form">					
					<div class="input-cont">
                        <input type="text" id="txttodt" name="txttodt" placeholder="Eg; To date..." class="m-wrap" />						
                    </div>                    
                </div>				
				</br>
				<button type="button" id="filter_data" class="btn green">Search &nbsp;
					<i class="icon-search m-icon-white"></i>
				</button>
            </form>
        </div>
		
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="tabbable tabbable-custom tabbable-full-width">
            <div class="tab-content">
                <div id="tab_1_2" class="tab-pane active">
					
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-check-sign"></i>Transaction Accounts</div>
								
								<a href= "#" id="paidexcel" class="invoice invoice_excel"  >
									<i class="fa fa-file-excel-o fa-2x" style="color:white; margin-top:10%;" aria-hidden="true"></i>					
								</a>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover table-full-width" id="sample_1">
                                <thead>
                                    <tr>
                                        <th> Event Id</th>
                                        <th> Event Name </th>
                                        <th>Client Name </th>
                                        
                                        <th>Income</th>
                                        <th>Expence</th>                                        
                                    </tr>
                                </thead>
                                <tbody id="showTrnDetail">
								
                                    <!--tr>
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td class="hidden-480">Win 95+</td>
                                        <td class="hidden-480">4</td>
                                        <td class="hidden-480">X</td>
                                        <td class="hidden-480">X</td>
										<td>Sample </td>
                                    </tr-->
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--end tab-pane-->
                
                <!-- End tab pane -->
            </div>
        </div>
        <!--end tabbable-->
        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE CONTAINER-->
</div>
<!-- END PAGE -->