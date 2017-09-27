<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Dynamic Table</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="css/demo_page.css" rel="stylesheet" />
    <link href="css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/DT_bootstrap.css" />
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
  </head>

  <body>

  <section id="container" class="">
      <!--header start-->
            <jsp:include page="Header.jsp"></jsp:include>
      <!--header end-->
      <!--sidebar start-->
      <aside>
        <jsp:include page="Menu.jsp"></jsp:include>  
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
              <table  class="display table table-bordered table-striped" id="dynamic-table">
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
      <!--main content end-->
      <!-- Right Slidebar start -->
      <div class="sb-slidebar sb-right sb-style-overlay">
          <h5 class="side-title">Online Customers</h5>
          <ul class="quick-chat-list">
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="img/chat-avatar2.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>John Doe</strong>
                          <small>Dream Land, AU</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="img/chat-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-important">3</span>
                          </div>
                          <strong>Jonathan Smith</strong>
                          <small>United States</small>
                      </div>
                  </div><!-- media -->
              </li>

              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="img/pro-ac-1.png" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-success">5</span>
                          </div>
                          <strong>Jane Doe</strong>
                          <small>ABC, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="img/avatar1.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>Anjelina Joli</strong>
                          <small>Fockland, UK</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="img/mail-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-warning">7</span>
                          </div>
                          <strong>Mr Tasi</strong>
                          <small>Dream Land, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
          </ul>
          <h5 class="side-title"> pending Task</h5>
          <ul class="p-task tasks-bar">
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">40%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                              <span class="sr-only">40% Complete (success)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Database Update</div>
                          <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
                              <span class="sr-only">60% Complete (warning)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Iphone Development</div>
                          <div class="percent">87%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 87%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                              <span class="sr-only">87% Complete</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Mobile App</div>
                          <div class="percent">33%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-danger">
                              <span class="sr-only">33% Complete (danger)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">45%</div>
                      </div>
                      <div class="progress progress-striped active">
                          <div style="width: 45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar">
                              <span class="sr-only">45% Complete</span>
                          </div>
                      </div>

                  </a>
              </li>
              <li class="external">
                  <a href="#">See All Tasks</a>
              </li>
          </ul>
      </div>
      <!-- Right Slidebar end -->
      <!--footer start-->
      <jsp:include page="Footer.jsp"></jsp:include>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->

    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/DT_bootstrap.js"></script>
    <script src="js/respond.min.js" ></script>

    <!--right slidebar-->
    <script src="js/slidebars.min.js"></script>

    <!--dynamic table initialization -->
    <script src="js/dynamic_table_init.js"></script>


    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

  </body>
</html>
