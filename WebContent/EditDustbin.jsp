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

    <title>Edit Dustbin</title>

    <!-- Bootstrap core CSS -->
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
    
    
    <!-- <script>
  function loadState()
	{
		
		
		var zoneId=document.getElementById("zname");
		//var state=document.getElementById("state");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllState();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].wardId;
					createOption.text=jsonObj[i].wardName;
					
					document.areaform.ward.options.add(createOption);
					
				}
			}
			
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/addarea?flag=loadward&zoneId="+zoneId.value, true);
		xmlhttp.send();
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllState()
	{
		var removeState=document.areaform.ward.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.areaform.ward.remove(i);
		}
	}
	
</script>
 -->    
  </head>

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
                              Edit Dustbin
                          </header>
                          <div class="panel-body">
                              <div class=" form">
                                  <form class="cmxform form-horizontal tasi-form"  method="post" action="<%=request.getContextPath()%>/adddustbin">
                                  <input type="hidden" name="flag" value="update">
                                  <div class="form-group ">
                                        <label for="zname" class="control-label col-lg-1">Zone:</label>
                                          <div class="col-lg-7">
                                         <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                         <select class="form-control " id="zname" name="zone" required="required">
											<c:forEach items="${sessionScope.edit }" var="x">
                                              <option value="${x.dustbinId }">${x.zoneId.zoneName }</option>
                                              <input type="hidden" name="id" value="${x.dustbinId}">
											</c:forEach>
                                          </select>
                                    </div>      
                                     </div>     
                                     <div class="form-group ">
                                        <label for="zname" class="control-label col-lg-1">Ward:</label>
                                        <div class="col-lg-7">
                                          <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                         <select class="form-control " id="wname" name="ward" required>
                                              <c:forEach items="${sessionScope.edit }" var="x">
                                              <option value="${x.dustbinId}">${x.wardId.wardName }</option>
                                              
											</c:forEach>
                                          </select>
                                          </div>
                                          
                                      </div>   
                                         <div class="form-group ">
                                          <label for="zname" class="control-label col-lg-1">Area:</label>
                                        	<div class="col-lg-7">
											<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                         <select class="form-control " id="aname" name="Area" required>
											<c:forEach items="${sessionScope.edit}" var="x">
                                              <option value="${x.dustbinId }">${x.areaId.areaName }</option>
											</c:forEach>
                                          </select>
                                          	</div>
                                         </div>
                                      
                                      
                                      <div class="form-group ">
                                       <label for="cname" class="control-label col-lg-1">Pincode:</label>
                                          <div class="col-lg-2">
                                              <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="pincode" value="${i.pincode}"> </td>
  											</tr>
               								</p:forEach>
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-1">Latitude:</label>
                                          <div class="col-lg-2">
                                               <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="latitude" value="${i.latitude}"> </td>
  											</tr>
               								</p:forEach>
                                          </div>
                                          <label for="cname" class="control-label col-lg-1">Longitude:</label>
                                          <div class="col-lg-2">
                                               <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="p" %>
              								<p:forEach items="${sessionScope.edit}" var="i">
              								<tr>
                  							<td><input type="text" name="longitude" value="${i.longitude}"> </td>
  											</tr>
               								</p:forEach>
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
      
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
      <!--footer start-->
      <jsp:include page="company_footer.jsp"></jsp:include>
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

    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/js/form-validation-script.js"></script>


          </body>
</html>
    