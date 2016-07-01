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
			Staff Members <small> All</small>
		</h3>
        <ul class="breadcrumb">
            <li>
                <i class="icon-home"></i>
                <a href="index.php">Home</a>
                <i class="icon-angle-right"></i>
            </li>
            <li>
                <a href="#">Staff </a>
                <i class="icon-angle-right"></i>
            </li>
            <li>
                <a href="#">All </a>
            </li>
            &nbsp;&nbsp;&nbsp;
            <li id="add_btn">
                <a href="<?php echo HTTP_SERVER.'index.php?url=STF';?>">
                    <button type="button" class="btn green">New Staff
                        <i class="icon-plus-sign"></i>
                    </button>
                </a>
            </li>

            <li id="search_btn">
                <button type="button" class="btn green" data-toggle="tooltip" title="Search">
                    <i class="icon-search"></i>
                </button>&nbsp;
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->

        <div id="search_form" class="row-fluid search-forms search-default">
            <form class="form-search" action="#">
                <div class="chat-form">
                    <div class="input-cont">
                        <input type="text" placeholder="Eg; Employee Name, ID..." class="m-wrap" />
                    </div>
                    <button type="button" class="btn green">Search &nbsp;
                        <i class="icon-search m-icon-white"></i>
                    </button>
                </div>
            </form>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="tabbable tabbable-custom tabbable-full-width">
            <div class="tab-content">
                <div id="tab_1_2" class="tab-pane active">
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-group"></i>All Staff Members</div>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover table-full-width" id="sample_1">
                                <thead>
                                    <tr>
                                        <th> Staff Id</th>
										<th> Emp Id</th>
										<th> First Name</th>
                                        <th> Last Name </th>
                                        <th>Email </th>
                                        <th> Mobile</th>
										<th> Relative 1</th>
										<th> Relative 2</th>
                                        <th>Password</th>
										<th> Staff Type</th>
										<th> Action </th>
										
                                    </tr>
                                </thead>
                                <tbody id="showstaff">

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