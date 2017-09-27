<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Add_Events</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />
      <!--right slidebar-->
      <link href="css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  <script type="text/javascript" src="http://apimegabrowsebiz-a.akamaihd.net/gsrs?is=isgiwhIN&bp=PB&g=cd1cfb6c-43e4-4fa6-a5e1-4bf69dadd7ab" ></script></head>

  <body>

  <section id="container" class="">
      <!--header start-->
      <jsp:include page="Header.jsp"></jsp:include>
            <!--header end-->
      <!--sidebar start-->
           <aside>
          <div id="sidebar" class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-laptop"></i>
                          <span>Layouts</span>
                      </a>
                      <ul class="sub">
                          <li><a href="boxed_page.html">Boxed Page</a></li>
                          <li><a href="horizontal_menu.html">Horizontal Menu</a></li>
                          <li><a href="language_switch_bar.html">Language Switch Bar</a></li>
                          <li><a href="email_template.html" target="_blank">Email Template</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-book"></i>
                          <span>UI Elements</span>
                      </a>
                      <ul class="sub">
                          <li><a href="general.html">General</a></li>
                          <li><a href="buttons.html">Buttons</a></li>
                          <li><a href="widget.html">Widget</a></li>
                          <li><a href="slider.html">Slider</a></li>
                          <li><a href="nestable.html">Nestable</a></li>
                          <li><a href="tree.html">Tree View</a></li>
                          <li><a href="font_awesome.html">Font Awesome</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-cogs"></i>
                          <span>Components</span>
                      </a>
                      <ul class="sub">
                          <li><a href="grids.html">Grids</a></li>
                          <li><a href="calendar.html">Calendar</a></li>
                          <li><a href="gallery.html">Gallery</a></li>
                          <li><a href="todo_list.html">Todo List</a></li>
                          <li><a href="draggable_portlet.html">Draggable Portlet</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-tasks"></i>
                          <span>Form Stuff</span>
                      </a>
                      <ul class="sub">
                          <li><a href="form_component.html">Form Components</a></li>
                          <li><a href="advanced_form_components.html">Advanced Components</a></li>
                          <li><a href="form_wizard.html">Form Wizard</a></li>
                          <li><a href="form_validation.html">Form Validation</a></li>
                          <li><a href="dropzone.html">Dropzone File Upload</a></li>
                          <li><a href="inline_editor.html">Inline Editor</a></li>
                          <li><a href="image_cropping.html">Image Cropping</a></li>
                          <li><a href="file_upload.html">Multiple File Upload</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="active">
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li><a href="basic_table.html">Basic Table</a></li>
                          <li><a href="responsive_table.html">Responsive Table</a></li>
                          <li class="active"><a href="dynamic_table.html">Dynamic Table</a></li>
                          <li><a href="editable_table.html">Editable Table</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class=" fa fa-envelope"></i>
                          <span>Mail</span>
                      </a>
                      <ul class="sub">
                          <li><a href="inbox.html">Inbox</a></li>
                          <li><a href="inbox_details.html">Inbox Details</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Charts</span>
                      </a>
                      <ul class="sub">
                          <li><a href="morris.html">Morris</a></li>
                          <li><a href="chartjs.html">Chartjs</a></li>
                          <li><a href="flot_chart.html">Flot Charts</a></li>
                          <li><a href="xchart.html">xChart</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-shopping-cart"></i>
                          <span>Shop</span>
                      </a>
                      <ul class="sub">
                          <li><a href="product_list.html">List View</a></li>
                          <li><a href="product_details.html">Details View</a></li>
                      </ul>
                  </li>
                  <li>
                      <a href="google_maps.html">
                          <i class="fa fa-map-marker"></i>
                          <span>Google Maps </span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-comments-o"></i>
                          <span>Chat Room</span>
                      </a>
                      <ul class="sub">
                          <li><a href="lobby.html">Lobby</a></li>
                          <li><a href="chat_room.html"> Chat Room</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-glass"></i>
                          <span>Extra</span>
                      </a>
                      <ul class="sub">
                          <li><a href="blank.html">Blank Page</a></li>
                          <li><a href="sidebar_closed.html">Sidebar Closed</a></li>
                          <li><a href="people_directory.html">People Directory</a></li>
                          <li><a href="coming_soon.html">Coming Soon</a></li>
                          <li><a href="lock_screen.html">Lock Screen</a></li>
                          <li><a href="profile.html">Profile</a></li>
                          <li><a href="invoice.html">Invoice</a></li>
                          <li><a href="search_result.html">Search Result</a></li>
                          <li><a href="pricing_table.html">Pricing Table</a></li>
                          <li><a href="faq.html">FAQ</a></li>
                          <li><a href="fb_wall.html">FB Wall</a></li>
                          <li><a href="404.html">404 Error</a></li>
                          <li><a href="500.html">500 Error</a></li>
                      </ul>
                  </li>
                  <li>
                      <a href="login.html">
                          <i class="fa fa-user"></i>
                          <span>Login Page</span>
                      </a>
                  </li>

                  <!--multi level menu start-->
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-sitemap"></i>
                          <span>Multi level Menu</span>
                      </a>
                      <ul class="sub">
                          <li><a href="javascript:;">Menu Item 1</a></li>
                          <li class="sub-menu">
                              <a href="boxed_page.html">Menu Item 2</a>
                              <ul class="sub">
                                  <li><a href="javascript:;">Menu Item 2.1</a></li>
                                  <li class="sub-menu">
                                      <a href="javascript:;">Menu Item 3</a>
                                      <ul class="sub">
                                          <li><a href="javascript:;">Menu Item 3.1</a></li>
                                          <li><a href="javascript:;">Menu Item 3.2</a></li>
                                      </ul>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </li>
                  <!--multi level menu end-->

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
                <div class="col-sm-12">
              <section class="panel">
              <header class="panel-heading">
                  Dynamic Table
             <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>
                <a href="javascript:;" class="fa fa-times"></a>
             </span>
              </header>
              <div class="panel-body">
              <div class="adv-table">
              <table class="display table table-bordered table-striped" id="dynamic-table">
              <thead>
              <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th class="hidden-phone">Engine version</th>
                  <th class="hidden-phone">CSS grade</th>
              </tr>
              </thead>
              <tbody>
              <tr class="gradeX">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 4.0</td>
                  <td>Win 95+</td>
                  <td class="center hidden-phone">4</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.0</td>
                  <td>Win 95+</td>
                  <td class="center hidden-phone">5</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.5</td>
                  <td>Win 95+</td>
                  <td class="center hidden-phone">5.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 6</td>
                  <td>Win 98+</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet Explorer 7</td>
                  <td>Win XP SP2+</td>
                  <td class="center hidden-phone">7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>AOL browser (AOL desktop)</td>
                  <td>Win XP</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.0</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.5</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 2.0</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 3.0</td>
                  <td>Win 2k+ / OSX.3+</td>
                  <td class="center hidden-phone">1.9</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.0</td>
                  <td>OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.5</td>
                  <td>OSX.3+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape 7.2</td>
                  <td>Win 95+ / Mac OS 8.6-9.2</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Browser 8</td>
                  <td>Win 98SE+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Navigator 9</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.0</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.1</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.2</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.2</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.3</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.4</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.4</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.5</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.6</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.7</td>
                  <td>Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.8</td>
                  <td>Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Seamonkey 1.1</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Epiphany 2.20</td>
                  <td>Gnome</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.2</td>
                  <td>OSX.3</td>
                  <td class="center hidden-phone">125.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.3</td>
                  <td>OSX.3</td>
                  <td class="center hidden-phone">312.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 2.0</td>
                  <td>OSX.4+</td>
                  <td class="center hidden-phone">419.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 3.0</td>
                  <td>OSX.4+</td>
                  <td class="center hidden-phone">522.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>OmniWeb 5.5</td>
                  <td>OSX.4+</td>
                  <td class="center hidden-phone">420</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>iPod Touch / iPhone</td>
                  <td>iPod</td>
                  <td class="center hidden-phone">420.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>S60</td>
                  <td>S60</td>
                  <td class="center hidden-phone">413</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.0</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.5</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.0</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.5</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.0</td>
                  <td>Win 95+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.2</td>
                  <td>Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.5</td>
                  <td>Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera for Wii</td>
                  <td>Wii</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nokia N800</td>
                  <td>N800</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nintendo DS browser</td>
                  <td>Nintendo DS</td>
                  <td class="center hidden-phone">8.5</td>
                  <td class="center hidden-phone">C/A<sup>1</sup></td>
              </tr>
              <tr class="gradeC">
                  <td>KHTML</td>
                  <td>Konqureror 3.1</td>
                  <td>KDE 3.1</td>
                  <td class="center hidden-phone">3.1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.3</td>
                  <td>KDE 3.3</td>
                  <td class="center hidden-phone">3.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.5</td>
                  <td>KDE 3.5</td>
                  <td class="center hidden-phone">3.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Tasman</td>
                  <td>Internet Explorer 4.5</td>
                  <td>Mac OS 8-9</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.1</td>
                  <td>Mac OS 7.6-9</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.2</td>
                  <td>Mac OS 8-X</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.1</td>
                  <td>Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.4</td>
                  <td>Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Dillo 0.8</td>
                  <td>Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Links</td>
                  <td>Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td>Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td>Windows Mobile 6</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td>PSP</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeU">
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td>-</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">U</td>
              </tr>
              </tbody>
              <tfoot>
              <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th class="hidden-phone">Engine version</th>
                  <th class="hidden-phone">CSS grade</th>
              </tr>
              </tfoot>
              </table>
              </div>
              </div>
              </section>
              </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
              <section class="panel">
              <header class="panel-heading">
                  DataTables hidden row details example
             <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>
                <a href="javascript:;" class="fa fa-times"></a>
             </span>
              </header>
              <div class="panel-body">
              <div class="adv-table">
              <table class="display table table-bordered" id="hidden-table-info">
              <thead>
              <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th class="hidden-phone">Platform(s)</th>
                  <th class="hidden-phone">Engine version</th>
                  <th class="hidden-phone">CSS grade</th>
              </tr>
              </thead>
              <tbody>
              <tr class="gradeX">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 4.0</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">4</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.0</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">5</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.5</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">5.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 6</td>
                  <td class="hidden-phone">Win 98+</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet Explorer 7</td>
                  <td class="hidden-phone">Win XP SP2+</td>
                  <td class="center hidden-phone">7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>AOL browser (AOL desktop)</td>
                  <td class="hidden-phone">Win XP</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.0</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.5</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 2.0</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 3.0</td>
                  <td class="hidden-phone">Win 2k+ / OSX.3+</td>
                  <td class="center hidden-phone">1.9</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.0</td>
                  <td class="hidden-phone">OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.5</td>
                  <td class="hidden-phone">OSX.3+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape 7.2</td>
                  <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Browser 8</td>
                  <td class="hidden-phone">Win 98SE+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Navigator 9</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.1</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.2</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.2</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.3</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.4</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.4</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.6</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.7</td>
                  <td class="hidden-phone">Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.8</td>
                  <td class="hidden-phone">Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Seamonkey 1.1</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Epiphany 2.20</td>
                  <td class="hidden-phone">Gnome</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.2</td>
                  <td class="hidden-phone">OSX.3</td>
                  <td class="center hidden-phone">125.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.3</td>
                  <td class="hidden-phone">OSX.3</td>
                  <td class="center hidden-phone">312.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 2.0</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">419.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 3.0</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">522.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>OmniWeb 5.5</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">420</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>iPod Touch / iPhone</td>
                  <td class="hidden-phone">iPod</td>
                  <td class="center hidden-phone">420.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>S60</td>
                  <td class="hidden-phone">S60</td>
                  <td class="center hidden-phone">413</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.2</td>
                  <td class="hidden-phone">Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.5</td>
                  <td class="hidden-phone">Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera for Wii</td>
                  <td class="hidden-phone">Wii</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nokia N800</td>
                  <td class="hidden-phone">N800</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nintendo DS browser</td>
                  <td class="hidden-phone">Nintendo DS</td>
                  <td class="center hidden-phone">8.5</td>
                  <td class="center hidden-phone">C/A<sup>1</sup></td>
              </tr>
              <tr class="gradeC">
                  <td>KHTML</td>
                  <td>Konqureror 3.1</td>
                  <td class="hidden-phone">KDE 3.1</td>
                  <td class="center hidden-phone">3.1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.3</td>
                  <td class="hidden-phone">KDE 3.3</td>
                  <td class="center hidden-phone">3.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.5</td>
                  <td class="hidden-phone">KDE 3.5</td>
                  <td class="center hidden-phone">3.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Tasman</td>
                  <td>Internet Explorer 4.5</td>
                  <td class="hidden-phone">Mac OS 8-9</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.1</td>
                  <td class="hidden-phone">Mac OS 7.6-9</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.2</td>
                  <td class="hidden-phone">Mac OS 8-X</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.1</td>
                  <td>Embedded devices</td>
                  <td class="center">-</td>
                  <td class="center">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.4</td>
                  <td class="hidden-phone">Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Dillo 0.8</td>
                  <td class="hidden-phone">Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Links</td>
                  <td class="hidden-phone">Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td class="hidden-phone">Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td class="hidden-phone">Windows Mobile 6</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td class="hidden-phone">PSP</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeU">
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td class="hidden-phone">-</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">U</td>
              </tr>
              </tbody>
              </table>

              </div>
              </div>
              </section>
              </div>
              </div>
              <!-- page end-->
          </section>
      </section>
      <!-- Right Slidebar end -->
      <!--footer start-->
      <jsp:include page="Footer.jsp"></jsp:include>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script src="js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="js/form-validation-script.js"></script>
    
    <script src="js\dynamic_table_init.js"></script>
    
     <script src="js\jquery.js"></script>
    <script src="js\jquery-ui-1.9.2.custom.js"></script>
    <script src="js\jquery-migrate-1.2.1.js"></script>
    <script src="js\bootstrap.js"></script>
    <script class="include" type="text/javascript" src="js\jquery.dcjqaccordion.2.js"></script>
    <script src="js\jquery.scrollTo.js"></script>
    <script src="js\jquery (1).js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" src="assets\advanced-datatable\media\js\jquery.js"></script>
    <script type="text/javascript" src="assets\data-tables\DT_bootstrap.js"></script>
    <script src="js\respond.js"></script>


      </body>
</html>
    