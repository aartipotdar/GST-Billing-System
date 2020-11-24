﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demoo.aspx.cs" Inherits="Template.demoo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <meta name="twitter:site" content="@themepixels">
    <meta name="twitter:creator" content="@themepixels">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Slim">
    <meta name="twitter:description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="twitter:image" content="http://themepixels.me/slim/img/slim-social.png">

    <!-- Facebook -->
    <meta property="og:url" content="http://themepixels.me/slim">
    <meta property="og:title" content="Slim">
    <meta property="og:description" content="Premium Quality and Responsive UI for Dashboard.">

    <meta property="og:image" content="http://themepixels.me/slim/img/slim-social.png">
    <meta property="og:image:secure_url" content="http://themepixels.me/slim/img/slim-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600">

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="author" content="ThemePixels">

    <title>Slim Responsive Bootstrap 4 Admin Template</title>

    <!-- vendor css -->
    <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="../lib/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet">
    <link href="../lib/select2/css/select2.min.css" rel="stylesheet">

    <!-- Slim CSS -->
    <link rel="stylesheet" href="../css/slim.css">

  </head>
  <body>

    <div class="slim-header with-sidebar">
      <div class="container-fluid">
        <div class="slim-header-left">
          <h2 class="slim-logo"><a href="index.html">slim<span>.</span></a></h2>
          <a href="" id="slimSidebarMenu" class="slim-sidebar-menu"><span></span></a>
          <div class="search-box">
            <input type="text" class="form-control" placeholder="Search">
            <button class="btn btn-primary"><i class="fa fa-search"></i></button>
          </div><!-- search-box -->
        </div><!-- slim-header-left -->
        <div class="slim-header-right">
          <div class="dropdown dropdown-a" data-toggle="tooltip" title="Activity Logs">
            <a href="" class="header-notification" data-toggle="dropdown">
              <i class="icon ion-ios-bolt-outline"></i>
            </a>
            <div class="dropdown-menu">
              <div class="dropdown-menu-header">
                <h6 class="dropdown-menu-title">Activity Logs</h6>
                <div>
                  <a href="">Filter List</a>
                  <a href="">Settings</a>
                </div>
              </div><!-- dropdown-menu-header -->
              <div class="dropdown-activity-list">
                <div class="activity-label">Today, December 13, 2017</div>
                <div class="activity-item">
                  <div class="row no-gutters">
                    <div class="col-2 tx-right">10:15am</div>
                    <div class="col-2 tx-center"><span class="square-10 bg-success"></span></div>
                    <div class="col-8">Purchased christmas sale cloud storage</div>
                  </div><!-- row -->
                </div><!-- activity-item -->
                <div class="activity-item">
                  <div class="row no-gutters">
                    <div class="col-2 tx-right">9:48am</div>
                    <div class="col-2 tx-center"><span class="square-10 bg-danger"></span></div>
                    <div class="col-8">Login failure</div>
                  </div><!-- row -->
                </div><!-- activity-item -->
                <div class="activity-item">
                  <div class="row no-gutters">
                    <div class="col-2 tx-right">7:29am</div>
                    <div class="col-2 tx-center"><span class="square-10 bg-warning"></span></div>
                    <div class="col-8">(D:) Storage almost full</div>
                  </div><!-- row -->
                </div><!-- activity-item -->
                <div class="activity-item">
                  <div class="row no-gutters">
                    <div class="col-2 tx-right">3:21am</div>
                    <div class="col-2 tx-center"><span class="square-10 bg-success"></span></div>
                    <div class="col-8">1 item sold <strong>Christmas bundle</strong></div>
                  </div><!-- row -->
                </div><!-- activity-item -->
                <div class="activity-label">Yesterday, December 12, 2017</div>
                <div class="activity-item">
                  <div class="row no-gutters">
                    <div class="col-2 tx-right">6:57am</div>
                    <div class="col-2 tx-center"><span class="square-10 bg-success"></span></div>
                    <div class="col-8">Earn new badge <strong>Elite Author</strong></div>
                  </div><!-- row -->
                </div><!-- activity-item -->
              </div><!-- dropdown-activity-list -->
              <div class="dropdown-list-footer">
                <a href="page-activity.html"><i class="fa fa-angle-down"></i> Show All Activities</a>
              </div>
            </div><!-- dropdown-menu-right -->
          </div><!-- dropdown -->
          <div class="dropdown dropdown-b" data-toggle="tooltip" title="Notifications">
            <a href="" class="header-notification" data-toggle="dropdown">
              <i class="icon ion-ios-bell-outline"></i>
              <span class="indicator"></span>
            </a>
            <div class="dropdown-menu">
              <div class="dropdown-menu-header">
                <h6 class="dropdown-menu-title">Notifications</h6>
                <div>
                  <a href="">Mark All as Read</a>
                  <a href="">Settings</a>
                </div>
              </div><!-- dropdown-menu-header -->
              <div class="dropdown-list">
                <!-- loop starts here -->
                <a href="" class="dropdown-link">
                  <div class="media">
                    <img src="http://via.placeholder.com/500x500" alt="">
                    <div class="media-body">
                      <p><strong>Suzzeth Bungaos</strong> tagged you and 18 others in a post.</p>
                      <span>October 03, 2017 8:45am</span>
                    </div>
                  </div><!-- media -->
                </a>
                <!-- loop ends here -->
                <a href="" class="dropdown-link">
                  <div class="media">
                    <img src="http://via.placeholder.com/500x500" alt="">
                    <div class="media-body">
                      <p><strong>Mellisa Brown</strong> appreciated your work <strong>The Social Network</strong></p>
                      <span>October 02, 2017 12:44am</span>
                    </div>
                  </div><!-- media -->
                </a>
                <a href="" class="dropdown-link read">
                  <div class="media">
                    <img src="http://via.placeholder.com/500x500" alt="">
                    <div class="media-body">
                      <p>20+ new items added are for sale in your <strong>Sale Group</strong></p>
                      <span>October 01, 2017 10:20pm</span>
                    </div>
                  </div><!-- media -->
                </a>
                <a href="" class="dropdown-link read">
                  <div class="media">
                    <img src="http://via.placeholder.com/500x500" alt="">
                    <div class="media-body">
                      <p><strong>Julius Erving</strong> wants to connect with you on your conversation with <strong>Ronnie Mara</strong></p>
                      <span>October 01, 2017 6:08pm</span>
                    </div>
                  </div><!-- media -->
                </a>
                <div class="dropdown-list-footer">
                  <a href="page-notifications.html"><i class="fa fa-angle-down"></i> Show All Notifications</a>
                </div>
              </div><!-- dropdown-list -->
            </div><!-- dropdown-menu-right -->
          </div><!-- dropdown -->
          <div class="dropdown dropdown-c">
            <a href="#" class="logged-user" data-toggle="dropdown">
              <img src="http://via.placeholder.com/500x500" alt="">
              <span>Katherine</span>
              <i class="fa fa-angle-down"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
              <nav class="nav">
                <a href="page-profile.html" class="nav-link"><i class="icon ion-person"></i> View Profile</a>
                <a href="page-edit-profile.html" class="nav-link"><i class="icon ion-compose"></i> Edit Profile</a>
                <a href="page-activity.html" class="nav-link"><i class="icon ion-ios-bolt"></i> Activity Log</a>
                <a href="page-settings.html" class="nav-link"><i class="icon ion-ios-gear"></i> Account Settings</a>
                <a href="page-signin.html" class="nav-link"><i class="icon ion-forward"></i> Sign Out</a>
              </nav>
            </div><!-- dropdown-menu -->
          </div><!-- dropdown -->
        </div><!-- header-right -->
      </div><!-- container-fluid -->
    </div><!-- slim-header -->

    <div class="slim-body">
      <div class="slim-sidebar">
        <label class="sidebar-label">Navigation</label>

        <ul class="nav nav-sidebar">
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-home-outline"></i> Dashboard</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="index.html" class="nav-sub-link">Dashboard 01</a></li>
              <li class="nav-sub-item"><a href="index2.html" class="nav-sub-link">Dashboard 02</a></li>
              <li class="nav-sub-item"><a href="index3.html" class="nav-sub-link">Dashboard 03</a></li>
              <li class="nav-sub-item"><a href="index4.html" class="nav-sub-link">Dashboard 04</a></li>
              <li class="nav-sub-item"><a href="index5.html" class="nav-sub-link">Dashboard 05</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item">
            <a href="page-messages.html" class="sidebar-nav-link"><i class="icon ion-ios-chatboxes-outline"></i> Messages</a>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-book-outline"></i> Pages</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="page-profile.html" class="nav-sub-link">Profile Page</a></li>
              <li class="nav-sub-item"><a href="page-invoice.html" class="nav-sub-link">Invoice</a></li>
              <li class="nav-sub-item"><a href="page-contact.html" class="nav-sub-link">Contact Manager</a></li>
              <li class="nav-sub-item"><a href="page-file-manager.html" class="nav-sub-link">File Manager</a></li>
              <li class="nav-sub-item"><a href="page-calendar.html" class="nav-sub-link">Calendar</a></li>
              <li class="nav-sub-item"><a href="page-timeline.html" class="nav-sub-link">Timeline</a></li>
              <li class="nav-sub-item sub-with-sub">
                <a href="#" class="nav-sub-link">Pricing</a>
                <ul>
                  <li><a href="page-pricing.html">Pricing 01</a></li>
                  <li><a href="page-pricing2.html">Pricing 02</a></li>
                  <li><a href="page-pricing3.html">Pricing 03</a></li>
                </ul>
              </li>
              <li class="nav-sub-item sub-with-sub">
                <a href="page-signin.html" class="nav-sub-link">Sign In</a>
                <ul>
                  <li><a href="page-signin.html">Signin Simple</a></li>
                  <li><a href="page-signin2.html">Signin Split</a></li>
                </ul>
              </li>
              <li class="nav-sub-item sub-with-sub">
                <a href="page-signup.html" class="nav-sub-link">Sign Up</a>
                <ul>
                  <li><a href="page-signup.html">Signup Simple</a></li>
                  <li><a href="page-signup2.html">Signup Split</a></li>
                </ul>
              </li>
              <li class="nav-sub-item sub-with-sub">
                <a href="#" class="nav-sub-link">Error Pages</a>
                <ul>
                  <li><a href="page-404.html">404 Not Found</a></li>
                  <li><a href="page-505.html">505 Forbidden</a></li>
                  <li><a href="page-500.html">500 Internal Server</a></li>
                  <li><a href="page-503.html">503 Service Unavailable</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-filing-outline"></i> UI Elements</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="elem-accordion.html" class="nav-sub-link">Accordion</a></li>
              <li class="nav-sub-item"><a href="elem-alerts.html" class="nav-sub-link">Alerts</a></li>
              <li class="nav-sub-item"><a href="elem-buttons.html" class="nav-sub-link">Buttons</a></li>
              <li class="nav-sub-item"><a href="elem-cards.html" class="nav-sub-link">Cards</a></li>
              <li class="nav-sub-item"><a href="elem-carousel.html" class="nav-sub-link">Carousel</a></li>
              <li class="nav-sub-item"><a href="elem-dropdowns.html" class="nav-sub-link">Dropdown</a></li>
              <li class="nav-sub-item"><a href="elem-icons.html" class="nav-sub-link">Icons</a></li>
              <li class="nav-sub-item"><a href="elem-images.html" class="nav-sub-link">Images</a></li>
              <li class="nav-sub-item"><a href="elem-lists.html" class="nav-sub-link">Lists</a></li>
              <li class="nav-sub-item"><a href="elem-modal.html" class="nav-sub-link">Modal</a></li>
              <li class="nav-sub-item"><a href="elem-media.html" class="nav-sub-link">Media Object</a></li>
              <li class="nav-sub-item"><a href="elem-navigation.html" class="nav-sub-link">Navigation</a></li>
              <li class="nav-sub-item"><a href="elem-pagination.html" class="nav-sub-link">Pagination</a></li>
              <li class="nav-sub-item"><a href="elem-tooltip.html" class="nav-sub-link">Tooltip</a></li>
              <li class="nav-sub-item"><a href="elem-popover.html" class="nav-sub-link">Popover</a></li>
              <li class="nav-sub-item"><a href="elem-progress.html" class="nav-sub-link">Progress</a></li>
              <li class="nav-sub-item"><a href="elem-spinner.html" class="nav-sub-link">Spinner</a></li>
              <li class="nav-sub-item"><a href="elem-typography.html" class="nav-sub-link">Typography</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-analytics-outline"></i> Charts</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="chart-morris.html" class="nav-sub-link">Morris Charts</a></li>
              <li class="nav-sub-item"><a href="chart-flot.html" class="nav-sub-link">Flot Charts</a></li>
              <li class="nav-sub-item"><a href="chart-chartjs.html" class="nav-sub-link">ChartJS</a></li>
              <li class="nav-sub-item"><a href="chart-echarts.html" class="nav-sub-link">ECharts</a></li>
              <li class="nav-sub-item"><a href="chart-chartist.html" class="nav-sub-link">Chartist</a></li>
              <li class="nav-sub-item"><a href="chart-rickshaw.html" class="nav-sub-link">Rickshaw</a></li>
              <li class="nav-sub-item"><a href="chart-sparkline.html" class="nav-sub-link">Sparkline</a></li>
              <li class="nav-sub-item"><a href="chart-peity.html" class="nav-sub-link">Peity</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-location-outline"></i> Maps</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="map-google.html" class="nav-sub-link">Google Maps</a></li>
              <li class="nav-sub-item"><a href="map-leaflet.html" class="nav-sub-link">Leaflet Maps</a></li>
              <li class="nav-sub-item"><a href="map-vector.html" class="nav-sub-link">Vector Maps</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link active"><i class="icon ion-ios-gear-outline"></i> Forms</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="form-elements.html" class="nav-sub-link">Form Elements</a></li>
              <li class="nav-sub-item"><a href="form-layouts.html" class="nav-sub-link active">Form Layouts</a></li>
              <li class="nav-sub-item"><a href="form-validation.html" class="nav-sub-link">Form Validation</a></li>
              <li class="nav-sub-item"><a href="form-wizards.html" class="nav-sub-link">Form Wizards</a></li>
              <li class="nav-sub-item"><a href="form-editor.html" class="nav-sub-link">WYSIWYG Editor</a></li>
              <li class="nav-sub-item"><a href="form-select2.html" class="nav-sub-link">Select2</a></li>
              <li class="nav-sub-item"><a href="form-rangeslider.html" class="nav-sub-link">Range Slider</a></li>
              <li class="nav-sub-item"><a href="form-datepicker.html" class="nav-sub-link">Datepicker</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item with-sub">
            <a href="" class="sidebar-nav-link"><i class="icon ion-ios-information-outline"></i> Helper/Utilities</a>
            <ul class="nav sidebar-nav-sub">
              <li class="nav-sub-item"><a href="util-background.html" class="nav-sub-link">Background</a></li>
              <li class="nav-sub-item"><a href="util-border.html" class="nav-sub-link">Border</a></li>
              <li class="nav-sub-item"><a href="util-height.html" class="nav-sub-link">Height</a></li>
              <li class="nav-sub-item"><a href="util-margin.html" class="nav-sub-link">Margin</a></li>
              <li class="nav-sub-item"><a href="util-padding.html" class="nav-sub-link">Padding</a></li>
              <li class="nav-sub-item"><a href="util-position.html" class="nav-sub-link">Position</a></li>
              <li class="nav-sub-item"><a href="util-typography.html" class="nav-sub-link">Typography</a></li>
              <li class="nav-sub-item"><a href="util-width.html" class="nav-sub-link">Width</a></li>
            </ul>
          </li>
          <li class="sidebar-nav-item">
            <a href="widgets.html" class="sidebar-nav-link"><i class="icon ion-ios-lightbulb-outline"></i> Widgets</a>
          </li>
        </ul>
      </div><!-- slim-sidebar -->

      <div class="slim-mainpanel">
        <div class="container">
          <div class="slim-pageheader">
            <ol class="breadcrumb slim-breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Forms</a></li>
              <li class="breadcrumb-item active" aria-current="page">Form Layouts</li>
            </ol>
            <h6 class="slim-pagetitle">Form Layouts</h6>
          </div><!-- slim-pageheader -->

          <div class="section-wrapper">
            <label class="section-title">Top Label Layout</label>
            <p class="mg-b-20 mg-sm-b-40">A form with a label on top of each form control.</p>

            <div class="form-layout">
              <div class="row mg-b-25">
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="form-control-label">Firstname: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="firstname" value="John Paul" placeholder="Enter firstname">
                  </div>
                </div><!-- col-4 -->
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="form-control-label">Lastname: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="lastname" value="McDoe" placeholder="Enter lastname">
                  </div>
                </div><!-- col-4 -->
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="form-control-label">Email address: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="email" value="johnpaul@yourdomain.com" placeholder="Enter email address">
                  </div>
                </div><!-- col-4 -->
                <div class="col-lg-8">
                  <div class="form-group mg-b-10-force">
                    <label class="form-control-label">Mail Address: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="address" value="Market St. San Francisco" placeholder="Enter address">
                  </div>
                </div><!-- col-8 -->
                <div class="col-lg-4">
                  <div class="form-group mg-b-10-force">
                    <label class="form-control-label">Country: <span class="tx-danger">*</span></label>
                    <select class="form-control select2" data-placeholder="Choose country">
                      <option label="Choose country"></option>
                      <option value="USA">United States of America</option>
                      <option value="UK">United Kingdom</option>
                      <option value="China">China</option>
                      <option value="Japan">Japan</option>
                    </select>
                  </div>
                </div><!-- col-4 -->
              </div><!-- row -->

              <div class="form-layout-footer">
                <button class="btn btn-primary bd-0">Submit Form</button>
                <button class="btn btn-secondary bd-0">Cancel</button>
              </div><!-- form-layout-footer -->
            </div><!-- form-layout -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Bordered Form Group Wrapper</label>
            <p class="mg-b-20 mg-sm-b-40">A bordered form group wrapper with a label on top of each form control.</p>

            <div class="form-layout form-layout-2">
              <div class="row no-gutters">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="form-control-label">Firstname: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="firstname" value="John Paul" placeholder="Enter firstname">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-4 mg-t--1 mg-md-t-0">
                  <div class="form-group mg-md-l--1">
                    <label class="form-control-label">Lastname: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="lastname" value="McDoe" placeholder="Enter lastname">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-4 mg-t--1 mg-md-t-0">
                  <div class="form-group mg-md-l--1">
                    <label class="form-control-label">Email address: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="email" value="johnpaul@yourdomain.com" placeholder="Enter email address">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-8">
                  <div class="form-group bd-t-0-force">
                    <label class="form-control-label">Mail address: <span class="tx-danger">*</span></label>
                    <input class="form-control" type="text" name="address" value="Market St., San Francisco" placeholder="Enter address">
                  </div>
                </div><!-- col-8 -->
                <div class="col-md-4">
                  <div class="form-group mg-md-l--1 bd-t-0-force">
                    <label class="form-control-label mg-b-0-force">Country: <span class="tx-danger">*</span></label>
                    <select id="select2-a" class="form-control" data-placeholder="Choose country">
                      <option label="Choose country"></option>
                      <option value="USA" selected>United States of America</option>
                      <option value="UK">United Kingdom</option>
                      <option value="China">China</option>
                      <option value="Japan">Japan</option>
                    </select>
                  </div>
                </div><!-- col-4 -->
              </div><!-- row -->
              <div class="form-layout-footer bd pd-20 bd-t-0">
                <button class="btn btn-primary bd-0">Submit Form</button>
                <button class="btn btn-secondary bd-0">Cancel</button>
              </div><!-- form-group -->
            </div><!-- form-layout -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Placeholder as Label</label>
            <p class="mg-b-20 mg-sm-b-40">A bordered form group wrapper but the label is in field of the form control.</p>

            <div class="form-layout form-layout-3">
              <div class="row no-gutters">
                <div class="col-md-4">
                  <div class="form-group">
                    <input class="form-control" type="text" name="firstname" placeholder="Enter firstname (required)">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-4 mg-t--1 mg-md-t-0">
                  <div class="form-group mg-md-l--1">
                    <input class="form-control" type="text" name="lastname" placeholder="Enter lastname (required)">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-4 mg-t--1 mg-md-t-0">
                  <div class="form-group mg-md-l--1">
                    <input class="form-control" type="text" name="email" placeholder="Enter email address">
                  </div>
                </div><!-- col-4 -->
                <div class="col-md-8">
                  <div class="form-group bd-t-0-force">
                    <input class="form-control" type="text" name="address" placeholder="Enter address">
                  </div>
                </div><!-- col-8 -->
                <div class="col-md-4">
                  <div class="form-group mg-md-l--1 bd-t-0-force">
                    <select id="select2-b" class="form-control" data-placeholder="Choose country">
                      <option label="Choose country"></option>
                      <option value="USA">United States of America</option>
                      <option value="UK">United Kingdom</option>
                      <option value="China">China</option>
                      <option value="Japan">Japan</option>
                    </select>
                  </div>
                </div><!-- col-4 -->
              </div><!-- row -->
              <div class="form-layout-footer bd pd-20 bd-t-0">
                <button class="btn btn-primary bd-0">Submit Form</button>
                <button class="btn btn-secondary bd-0">Cancel</button>
              </div><!-- form-group -->
            </div><!-- form-layout -->
          </div><!-- section-wrapper -->

          <div class="row row-sm mg-t-20">
            <div class="col-lg-6">
              <div class="section-wrapper">
                <label class="section-title">Left Label Alignment</label>
                <p class="mg-b-20 mg-sm-b-40">A basic form where labels are aligned in left.</p>

                <div class="form-layout form-layout-4">
                  <div class="row">
                    <label class="col-sm-4 form-control-label">Firstname: <span class="tx-danger">*</span></label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter firstname">
                    </div>
                  </div><!-- row -->
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label">Lastname: <span class="tx-danger">*</span></label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter lastname">
                    </div>
                  </div>
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label">Email: <span class="tx-danger">*</span></label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter email address">
                    </div>
                  </div>
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label">Address: <span class="tx-danger">*</span></label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <textarea rows="2" class="form-control" placeholder="Enter your address"></textarea>
                    </div>
                  </div>
                  <div class="form-layout-footer mg-t-30">
                    <button class="btn btn-primary bd-0">Submit Form</button>
                    <button class="btn btn-secondary bd-0">Cancel</button>
                  </div><!-- form-layout-footer -->
                </div><!-- form-layout -->
              </div><!-- section-wrapper -->
            </div><!-- col-6 -->
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <div class="section-wrapper">
                <label class="section-title">Right Label Alignment</label>
                <p class="mg-b-20 mg-sm-b-40">A basic form where labels are aligned in right.</p>
                <div class="form-layout form-layout-5">
                  <div class="row">
                    <label class="col-sm-4 form-control-label"><span class="tx-danger">*</span> Firstname:</label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter firstname">
                    </div>
                  </div><!-- row -->
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label"><span class="tx-danger">*</span> Lastname:</label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter lastname">
                    </div>
                  </div>
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label"><span class="tx-danger">*</span> Email:</label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <input type="text" class="form-control" placeholder="Enter email address">
                    </div>
                  </div>
                  <div class="row mg-t-20">
                    <label class="col-sm-4 form-control-label"><span class="tx-danger">*</span> Address:</label>
                    <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <textarea rows="2" class="form-control" placeholder="Enter your address"></textarea>
                    </div>
                  </div><!-- row -->
                  <div class="row mg-t-30">
                    <div class="col-sm-8 mg-l-auto">
                      <div class="form-layout-footer">
                        <button class="btn btn-primary bd-0">Submit Form</button>
                        <button class="btn btn-secondary bd-0">Cancel</button>
                      </div><!-- form-layout-footer -->
                    </div><!-- col-8 -->
                  </div>
                </div><!-- form-layout -->
              </div><!-- section-wrapper -->
            </div><!-- col-6 -->
          </div><!-- row -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Bordered Left Label Alignment</label>
            <p class="mg-b-20 mg-sm-b-40">A basic form where labels are aligned in left with bordered wrapper.</p>

            <div class="form-layout form-layout-6">
              <div class="row no-gutters">
                <div class="col-5 col-sm-4">
                  Firstname:
                </div><!-- col-4 -->
                <div class="col-7 col-sm-8">
                  <input class="form-control" type="text" name="fullname" placeholder="Enter your fullname">
                </div><!-- col-8 -->
              </div><!-- row -->
              <div class="row no-gutters">
                <div class="col-5 col-sm-4">
                  Email Address:
                </div><!-- col-4 -->
                <div class="col-7 col-sm-8">
                  <input class="form-control" type="text" name="firstname" placeholder="Enter your email address">
                </div><!-- col-8 -->
              </div><!-- row -->
            </div><!-- form-layout -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Bordered Right Label Alignment</label>
            <p class="mg-b-20 mg-sm-b-40">A basic form where labels are aligned in right with bordered wrapper.</p>

            <div class="form-layout form-layout-7">
              <div class="row no-gutters">
                <div class="col-5 col-sm-4">
                  Firstname:
                </div><!-- col-4 -->
                <div class="col-7 col-sm-8">
                  <input class="form-control" type="text" name="fullname" placeholder="Enter your fullname">
                </div><!-- col-8 -->
              </div><!-- row -->
              <div class="row no-gutters">
                <div class="col-5 col-sm-4">
                  Email Address:
                </div><!-- col-4 -->
                <div class="col-7 col-sm-8">
                  <input class="form-control" type="text" name="firstname" placeholder="Enter your email address">
                </div><!-- col-8 -->
              </div><!-- row -->
            </div><!-- form-layout -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Center &amp; Right Form Alignment</label>
            <p class="mg-b-20 mg-sm-b-40">An inline form that is centered align and right aligned.</p>

            <div class="d-flex align-items-center justify-content-center bg-gray-100 ht-md-80 bd pd-x-20">
              <div class="d-md-flex pd-y-20 pd-md-y-0">
                <input type="text" class="form-control" placeholder="Email address">
                <input type="password" class="form-control mg-md-l-10 mg-t-10 mg-md-t-0" placeholder="Password">
                <button class="btn btn-primary pd-y-13 pd-x-20 bd-0 mg-md-l-10 mg-t-10 mg-md-t-0">Sign In</button>
              </div>
            </div><!-- d-flex -->

            <div class="d-flex align-items-center justify-content-end bg-gray-100 ht-md-80 bd pd-x-20 mg-t-10">
              <div class="d-md-flex pd-y-20 pd-md-y-0">
                <input type="text" class="form-control" placeholder="Email address">
                <input type="password" class="form-control mg-md-l-10 mg-t-10 mg-md-t-0" placeholder="Password">
                <button class="btn btn-primary pd-y-13 pd-x-20 bd-0 mg-md-l-10 mg-t-10 mg-md-t-0">Sign In</button>
              </div>
            </div><!-- d-flex -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Form Inside Card</label>
            <p class="mg-b-20 mg-sm-b-40">A form that is inside the card.</p>

            <div class="form-card-wrapper">
              <div class="card wd-350 shadow-base">
                <div class="card-body pd-x-20 pd-xs-40">
                  <h5 class="tx-xs-24 tx-normal tx-gray-900 mg-b-15">Sign in to continue</h5>
                  <p class="mg-b-30 tx-14">Don't have an account? <a href="">Create an account</a>, it only takes less than a minute.</p>

                  <div class="form-group">
                    <input class="form-control" type="text" name="email" placeholder="Enter email address">
                  </div><!-- form-group -->
                  <div class="form-group">
                    <input class="form-control" type="text" name="email" placeholder="Enter password">
                  </div><!-- form-group -->
                  <button class="btn btn-primary btn-block">Sign In</button>
                </div><!-- card-body -->
              </div><!-- card -->
            </div><!-- form-card-wrapper -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Form In Dropdown</label>
            <p class="mg-b-20 mg-sm-b-40">A form that is inside the dropdown menu.</p>

            <div class="dropdown dropdown-demo show">
              <a href="#" class="tx-gray-800 d-inline-block">
                <div class="ht-45 pd-x-20 bd d-flex align-items-center justify-content-center">
                  <span class="mg-r-5 tx-13 tx-medium">Sign In</span>
                  <i class="fa fa-angle-down"></i>
                </div>
              </a>
              <div class="dropdown-menu bg-white pd-20 pd-xs-40 wd-xs-350 pos-static ft-none shadow-base show">
                <h6 class="tx-gray-800 tx-uppercase tx-bold">Sign In</h6>
                <p class="tx-gray-600 mg-b-30">Signin using your account credentials.</p>

                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email">
                </div><!-- form-group -->

                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password">
                </div><!-- form-group -->

                <div class="form-group"><a href="" class="tx-12">Forgot password?</a></div>

                <button class="btn btn-primary btn-block mg-b-30">Sign In</button>

                <p class="tx-11 tx-uppercase tx-spacing-2">Or Sign In With</p>
                <a href="#" class="btn btn-primary btn-icon">
                  <div><i class="fa fa-facebook"></i></div>
                </a>
                <a href="#" class="btn btn-info btn-icon mg-l-5">
                  <div><i class="fa fa-twitter"></i></div>
                </a>
                <a href="#" class="btn btn-danger btn-icon mg-l-5">
                  <div><i class="fa fa-google-plus"></i></div>
                </a>
              </div><!-- dropdown-menu -->
            </div><!-- dropdown -->
          </div><!-- section-wrapper -->

          <div class="section-wrapper mg-t-20">
            <label class="section-title">Form In Modal</label>
            <p class="mg-b-20 mg-sm-b-40">A form that is inside the modal box.</p>

            <div class="pd-y-50 bg-gray-700 mg-t-20">
              <div class="modal d-block pos-static">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content bd-0 rounded-0 wd-xs-350 wd-xl-auto mg-xl-x-25">
                    <div class="modal-body pd-0">
                      <div class="row flex-row-reverse no-gutters">
                        <div class="col-xl-6">
                          <div class="pd-30">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                            <div class="pd-xs-x-30 pd-y-10">
                              <h5 class="tx-xs-28 tx-inverse mg-b-5">Welcome back!</h5>
                              <p>Sign in to your account to continue</p>
                              <br>
                              <div class="form-group">
                                <input type="email" name="email" class="form-control" placeholder="Enter your email">
                              </div><!-- form-group -->
                              <div class="form-group mg-b-20">
                                <input type="email" name="password" class="form-control" placeholder="Enter your password">
                                <a href="" class="tx-12 d-block mg-t-10">Forgot password?</a>
                              </div><!-- form-group -->

                              <button class="btn btn-primary btn-block">Sign In</button>

                              <div class="mg-t-30 mg-b-20 tx-12">Don't have an account yet? <a href="">Sign Up</a></div>
                            </div>
                          </div><!-- pd-20 -->
                        </div><!-- col-6 -->
                        <div class="col-xl-6 bg-primary">
                          <div class="pd-40">
                            <h1 class="tx-white mg-b-20">slim</h1>
                            <p class="tx-white op-7 mg-b-30 tx-13">We work with clients big and small across a range of sectors and we utilise all forms of media to get your name out there in a way that’s right for you. We believe that analysis of your company and your customers is key in responding effectively to your promotional needs and we will work with you to fully understand your business to achieve the greatest amount of publicity possible so that you can see a return from the advertising.</p>
                            <p class="tx-white">
                              <span class="tx-uppercase tx-medium d-block mg-b-15">Our Address:</span>
                              <span class="op-7 tx-13">Ayala Center, Cebu Business Park, Cebu City, Cebu, Philippines 6000</span>
                            </p>
                          </div>
                        </div><!-- col-6 -->
                      </div><!-- row -->
                    </div><!-- modal-body -->
                  </div><!-- modal-content -->
                </div><!-- modal-dialog -->
              </div><!-- modal -->
            </div><!-- pd-y-50 -->
            <div class="pd-y-30 tx-center bg-dark">
              <a href="" class="btn btn-primary pd-x-25" data-toggle="modal" data-target="#modaldemo">View Live Demo</a>
            </div><!-- pd-y-30 -->
          </div><!-- section-wrapper -->
        </div><!-- container -->

        <div class="slim-footer mg-t-0">
          <div class="container-fluid">
            <p>Copyright 2018 &copy; All Rights Reserved. Slim Dashboard Template</p>
            <p>Designed by: <a href="">ThemePixels</a></p>
          </div><!-- container-fluid -->
        </div><!-- slim-footer -->
      </div><!-- slim-mainpanel -->
    </div><!-- slim-body -->

    <!-- MODAL GRID -->
    <div id="modaldemo" class="modal fade">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content bd-0 bg-transparent rounded overflow-hidden">
          <div class="modal-body pd-0">
            <div class="row no-gutters">
              <div class="col-lg-6 bg-primary">
                <div class="pd-40">
                  <h1 class="tx-white mg-b-20">slim</h1>
                  <p class="tx-white op-7 mg-b-30">We work with clients big and small across a range of sectors and we utilise all forms of media to get your name out there in a way that’s right for you. We believe that analysis of your company and your customers is key in responding effectively to your promotional needs and we will work with you to fully understand your business to achieve the greatest amount of publicity possible so that you can see a return from the advertising.</p>
                  <p class="tx-white">
                    <span class="tx-uppercase tx-medium d-block mg-b-15">Our Address:</span>
                    <span class="op-7">Ayala Center, Cebu Business Park, Cebu City, Cebu, Philippines 6000</span>
                  </p>
                </div>
              </div><!-- col-6 -->
              <div class="col-lg-6 bg-white">
                <div class="pd-y-30 pd-xl-x-30">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <div class="pd-x-30 pd-y-10">
                    <h3 class="tx-gray-800 tx-normal mg-b-5">Welcome back!</h3>
                    <p>Sign in to your account to continue</p>
                    <br>
                    <div class="form-group">
                      <input type="email" name="email" class="form-control" placeholder="Enter your email">
                    </div><!-- form-group -->
                    <div class="form-group mg-b-20">
                      <input type="email" name="password" class="form-control" placeholder="Enter your password">
                      <a href="" class="tx-12 d-block mg-t-10">Forgot password?</a>
                    </div><!-- form-group -->

                    <button class="btn btn-primary btn-block">Sign In</button>

                    <div class="mg-t-30 mg-b-20">Don't have an account yet? <a href="">Sign Up</a></div>
                  </div>
                </div><!-- pd-20 -->
              </div><!-- col-6 -->
            </div><!-- row -->
          </div><!-- modal-body -->
        </div><!-- modal-content -->
      </div><!-- modal-dialog -->
    </div><!-- modal -->

    <script src="../lib/jquery/js/jquery.js"></script>
    <script src="../lib/popper.js/js/popper.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.js"></script>
    <script src="../lib/jquery.cookie/js/jquery.cookie.js"></script>
    <script src="../lib/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
    <script src="../lib/select2/js/select2.min.js"></script>

    <script src="../js/slim.js"></script>
    <script>
        $(function () {
            'use strict'

            $('.form-layout .form-control').on('focusin', function () {
                $(this).closest('.form-group').addClass('form-group-active');
            });

            $('.form-layout .form-control').on('focusout', function () {
                $(this).closest('.form-group').removeClass('form-group-active');
            });

            // Select2
            $('.select2').select2({
                minimumResultsForSearch: Infinity
            });

            $('#select2-a, #select2-b').select2({
                minimumResultsForSearch: Infinity
            });

            $('#select2-a').on('select2:opening', function (e) {
                $(this).closest('.form-group').addClass('form-group-active');
            });

            $('#select2-a').on('select2:closing', function (e) {
                $(this).closest('.form-group').removeClass('form-group-active');
            });

        });
    </script>

    
    </div>
    </form>
</body>
</html>
