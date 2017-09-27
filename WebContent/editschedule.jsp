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
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.png">

    <title>Edit Schedule</title>
<!-- Bootstrap core CSS -->
    <link href="css\bootstrap.css" rel="stylesheet">
    <link href="css\bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets\font-awesome\css\font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="assets\bootstrap-fileupload\bootstrap-fileupload.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-wysihtml5\bootstrap-wysihtml5.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-datepicker\css\datepicker.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-timepicker\compiled\timepicker.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-colorpicker\css\colorpicker.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-daterangepicker\daterangepicker-bs3.css">
    <link rel="stylesheet" type="text/css" href="assets\bootstrap-datetimepicker\css\datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="assets\jquery-multi-select\css\multi-select.css">

<!--right slidebar-->
    <link href="css\slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css\style.css" rel="stylesheet">
    <link href="css\style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- Bootstrap core CSS -->
     <link rel="stylesheet" type="text/css" href="assets\bootstrap-timepicker\compiled\timepicker.css">
     <link rel="stylesheet" type="text/css" href="assets\bootstrap-datetimepicker\css\datetimepicker.css">
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/css/font-awesome.css" rel="stylesheet" />
      <!--right slidebar-->
      <link href="${pageContext.request.contextPath }/css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath }/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath }/js/respond.min.js"></script>
    <![endif]-->
  <script type="text/javascript" src="http://apimegabrowsebiz-a.akamaihd.net/gsrs?is=isgiwhIN&bp=PB&g=cd1cfb6c-43e4-4fa6-a5e1-4bf69dadd7ab" ></script></head>

  <body>

  <section id="container" class="">
      <!--header start-->
      <jsp:include page="Header.jsp"></jsp:include>
            <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <jsp:include page="Menu.jsp"></jsp:include>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
             
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Edit Schedule
                          </header>
                          <div class="panel-body">
                              <div class=" form">
                                  <form class="cmxform form-horizontal tasi-form"  method="get" action="<%=request.getContextPath()%>/addschedule">                                      <div class="form-group ">
                                        <div class="form-group ">
                                        <label for="zname" class="control-label col-md-1">Area:</label>
                                        <div class="col-lg-4">
                                         <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                         <select class="form-control " id="zname" name="area" required="required">
											<c:forEach items="${sessionScope.search }" var="x">
                                              <option value="${x.areaId }">${x.areaName }</option>
                                              
											</c:forEach>
                                          </select>
                                          </div>
                                          
                                      </div> 
                                      </div>
                                      <input type="hidden" name="id" value="${i.scheduleId}">
                                     <input type="hidden" name="flag" value="update">
                                      <div class="form-group">
                                      <label class="control-label col-md-1">Time</label>
                                      <div class="col-md-4">
                                          <div class="input-group bootstrap-timepicker">
                                              <input type="text" name="time" class="form-control timepicker-default">
                                                <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-clock-o"></i></button>
                                                </span>
                                          </div>
                                      </div> 
                                      
                                  </div>
                                  
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-danger" type="submit">Update</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>

                          </div>
                      </section>
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-12">
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
                          <img alt="" src="${pageContext.request.contextPath }/img/chat-avatar2.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath }/img/chat-avatar.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath }/img/pro-ac-1.png" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath }/img/avatar1.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath }/img/mail-avatar.jpg" class="media-object">
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
      <br/>
      <br/>
      <br/>
      <br/>
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
      <!--footer start-->
      <jsp:include page="Footer.jsp"></jsp:include>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
     <script type="text/javascript" src="assets\fuelux\js\spinner.js"></script>
  <script type="text/javascript" src="assets\bootstrap-fileupload\bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="assets\bootstrap-wysihtml5\wysihtml5-0.3.js"></script>
  <script type="text/javascript" src="assets\bootstrap-wysihtml5\bootstrap-wysihtml5.js"></script>
  <script type="text/javascript" src="assets\bootstrap-datepicker\js\bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="assets\bootstrap-datetimepicker\js\bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="assets\bootstrap-daterangepicker\moment.js"></script>
  <script type="text/javascript" src="assets\bootstrap-daterangepicker\daterangepicker.js"></script>
  <script type="text/javascript" src="assets\bootstrap-colorpicker\js\bootstrap-colorpicker.js"></script>
  <script type="text/javascript" src="assets\bootstrap-timepicker\js\bootstrap-timepicker.js"></script>
  <script type="text/javascript" src="assets\jquery-multi-select\js\jquery.js"></script>
  <script type="text/javascript" src="assets\jquery-multi-select\js\jquery (1).js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath }/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath }/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/js/form-validation-script.js"></script>


          </body>
</html>
    