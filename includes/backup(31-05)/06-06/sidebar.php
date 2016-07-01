<!-- BEGIN SIDEBAR -->

<div class="page-sidebar nav-collapse collapse  ">

    <!-- BEGIN SIDEBAR MENU -->

    <ul class="page-sidebar-menu">

        <li>

            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            <div class="sidebar-toggler hidden-phone"></div>

            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

        </li>

        <li>

            <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

            <form class="sidebar-search">

                <!--div class="input-box">

							<!--a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="Search..." />

							<input type="button" class="submit" value=" " />

						</div-->

            </form>

            <!-- END RESPONSIVE QUICK SEARCH FORM -->

        </li>

        <!--?php echo $_GET['url'];?-->

        <!--li class="start <!--?php isset($_GET['url']) && !empty($_GET['url']) && strtoupper($_GET['url']) == 'DSH' ? 'active': '';?>"

				<li class="start <!--?php 1==1 ? 'active' :  ''  ; ?>

					<!--?php //isset($_GET['url'] == 'DSH') ? $_GET['url'] : 'not' ;  ?>" >-->

        <li class="start

					<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'DSH') 

						{

							echo " active ";

						}

						else

						{

							echo " ";

						}

					?>">

            <a href="<?php echo HTTP_SERVER.'index.php?url=DSH';?>">

                <i class="icon-home"></i>

                <span class="title">Dashboard</span>

                <span class="selected"></span>

            </a>

        </li>

        <li class="

					<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'ENR') 

						{

							echo " active ";

						}

						else

						{

							echo " ";

						}

					?>">

            <a href="<?php echo HTTP_SERVER.'index.php?url=ENR';?>">

                <i class="icon-question-sign"></i>

                <span class="title">Enquiry</span>

                <span class="arrow "></span>

            </a>


        </li>

		<!--li class="

					<?php 

						// if(isset($_GET['url']) && strtoupper($_GET['url']) == 'VER') 

						// {

							// echo " active ";

						// }

						// else

						// {

							// echo " ";

						// }

					?>">

            <a href="<?php //echo HTTP_SERVER.'index.php?url=VER';?>">

                <i class="icon-question-sign"></i>

                <span class="title">Vertical Alignment</span>

                <span class="arrow "></span>

            </a>



        </li-->

        <li class="

					<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'EVD') 

						{

							echo " active ";

						}

						else

						{

							echo " ";

						}

					?>">

            <a href="<?php echo HTTP_SERVER.'index.php?url=EVD';?>">

                <i class="fa fa-calendar-plus-o"></i>

                <span class="title">Event Details</span>

                <span class="arrow "></span>

            </a>



        </li>



        <li class=" 

					<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'NEW') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'UPC')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'COM')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'EALL')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class="icon-calendar"></i>

                <span class="title">Event Status</span>

                <span class="arrow"></span>

            </a>



            <ul class="sub-menu" id="cntstat">

				<!--li>

                    <a href="<?php echo HTTP_SERVER.'index.php?url=EALL';?>">

                        <i class="icon-group"></i> All 

						<span class="badge">6</span>

					</a>

						

                </li>

			

                <li>

                    <a href="<?php echo HTTP_SERVER.'index.php?url=NEW';?>">

                        <i class="icon-file"></i> New 

						<span class="badge">6</span>

					</a>

						

                </li>



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=UPC';?>">

                        <i class="icon-time"></i> Upcoming

						<span class="badge">6</span>

                    </a>

                </li>



                <li class="click">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=COM';?>">

                        <i class="icon-check"></i> Completed

						<span class="badge">6</span>

                    </a>

                </li-->



            </ul>

        </li>

        <li class="

				 	<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'EQA') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'CTG')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'ACS')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'ALL')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class=" icon-cogs"></i>

                <span class="title">Equipments</span>

                <span class="arrow"></span>

            </a>

            <ul class="sub-menu">



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=EQA';?>">

                        <i class="icon-sitemap"></i> All </a>

                </li>



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=CTG';?>">

                        <i class="icon-reorder"></i> Category </a>

                </li>



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=ACS';?>">

                        <i class="icon-briefcase"></i> Accessories

                    </a>

                </li>



            </ul>

        </li>

        <li class="

				 	<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'VAL') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'VDE')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class=" icon-male"></i>

                <span class="title">Vendors</span>

                <span class="arrow"></span>

            </a>

            <ul class="sub-menu">



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=VAL';?>">

                        <i class="icon-group"></i> All </a>

                </li>



                <!--li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=VDE';?>">

                        <i class="fa fa-list-alt"></i> Details

                    </a>

                </li-->



            </ul>

        </li>

        <li class="

				 	<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'PID') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'UPD')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'VPD')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'VUD')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class="icon-money"></i>

                <span class="title">Accounting</span>

                <span class="arrow"></span>

            </a>



            <ul class="sub-menu">



                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=PID';?>">

                        <i class="icon-check-sign"></i> Paid </a>

                </li>

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=UPD';?>">

                        <i class="icon-remove-sign"></i> Unpaid </a>

                </li>

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=VPD';?>">

                        <i class="icon-check-sign"></i> Vendor Paid </a>

                </li>

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=VUD';?>">

                        <i class="icon-remove-sign"></i> Vendor Unpaid</a>

                </li>

            </ul>

        </li>



        <li class="

				 	<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'STA') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'STF')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class=" icon-user"></i>

                <span class="title">Staff</span>

                <span class="arrow"></span>

            </a>

            <ul class="sub-menu">

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=STA';?>">

                        <i class="icon-group"></i> All

                    </a>

                </li>

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=STF';?>">

                        <i class="icon-plus-sign"></i> Add/Edit 

					</a>

                </li>

            </ul>

        </li>

        <li class="

				 	<?php 

						if(isset($_GET['url']) && strtoupper($_GET['url']) == 'HOL') 

						{

							echo " active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'CMP')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'ADC')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'OPT')

						{

							echo "active ";

						}

						elseif(isset($_GET['url']) && strtoupper($_GET['url']) == 'EML')

						{

							echo "active ";

						}

						else

						{

							echo" ";

						}

						?>">

            <a href="javascript:;">

                <i class=" icon-cogs"></i>

                <span class="title">Settings</span>

                <span class="arrow"></span>

            </a>

            <ul class="sub-menu">

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=HOL';?>">

                        <i class="fa fa-calendar-check-o"></i> Holidays </a>

                </li>

                <li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=CMP';?>">

                        <i class="fa fa-info-circle"></i> Company Information

					</a>

                </li>

				<li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=ADC';?>">

                        <i class="icon-plus-sign"></i> Add Company 

					</a>

                </li>

				<li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=OPT';?>">

                        <i class="icon-cog"></i> Option 

					</a>

                </li>

				<li class="">

                    <a href="<?php echo HTTP_SERVER.'index.php?url=EML';?>">

                        <i class="icon-cog"></i> Emails 

					</a>

                </li>

            </ul>

        </li>

    </ul>

    <!-- END SIDEBAR MENU -->

</div>

<!-- END SIDEBAR -->