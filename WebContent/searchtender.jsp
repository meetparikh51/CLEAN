 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/favicon.png">

    <title>Search Tender</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/css/font-awesome.css" rel="stylesheet">

    <!--dynamic table-->
    <link href="${pageContext.request.contextPath }/css/demo_page.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/demo_table.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/DT_bootstrap.css">
      <!--right slidebar-->
      <link href="${pageContext.request.contextPath }/css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath }/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath }/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" class="">
      <!--header start-->
      <jsp:include page="Header.jsp"></jsp:include>
            <!--header end-->
      <!--sidebar start-->
      <jsp:include page="Menu.jsp"></jsp:include>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
                <div class="col-sm-12">
              <section class="panel">
              <header class="panel-heading">
                  Search Tender
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
              	  <th>Tender Number</th>
                  <th>Tender Name</th>
                  <th>Description</th>
                  <th>Tender Start Date</th>
                  <th>Tender End Date</th>
                  <th>Tender Amount</th>
                  <th>Area</th>
                  <th>Staff Required</th>
                  <th>Deposited Amount</th>
                  <th>Action</th>
                  
              </tr>
              </thead>
              <tbody>
              <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              <p:forEach items="${sessionScope.search}" var="i">
              <tr>
                  <td>${i.tenderNo}</td>
                  <td>${i.tenderName}</td>
                  <td>${i.description}</td>
                   <td>${i.dateFrom}</td>
                   <td>${i.dateTo}</td>
                   <td>${i.tenderAmount}</td>
                   <td>${i.areaId.areaName}</td>
                   <td>${i.staffNumber}</td>
                   <td>${i.depositedMoney}</td>
                   
                   
                  <td><a href="<%=request.getContextPath()%>/addtender?tenderid=${i.tenderId}&flag=edit">edit</a>/<a href="<%=request.getContextPath()%>/addtender?tenderid=${i.tenderId}&flag=delete">delete</a></td>
                 
              </tr>
              
              
            
               </p:forEach>
              
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
      <!--footer start-->
      <jsp:include page="Footer.jsp"></jsp:include>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->

    <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery-ui-1.9.2.custom.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery-migrate-1.2.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.dcjqaccordion.2.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.scrollTo.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery (1).js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/DT_bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/js/respond.js"></script>

    <!--right slidebar-->
    <script src="${pageContext.request.contextPath }/js/slidebars.js"></script>

    <!--dynamic table initialization -->
    <script src="${pageContext.request.contextPath }/js/dynamic_table_init.js"></script>


    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath }/js/common-scripts.js"></script>

  </body>
</html>
    