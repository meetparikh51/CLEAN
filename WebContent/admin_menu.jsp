<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a class="active" href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-laptop"></i>
                          <span>Manage Zone:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddZone.jsp">Add Zone</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addzone?flag=search">Search Zone</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Manage Ward:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath() %>/addward?flag=loadZone">Add Ward</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addward?flag=search">Search Ward</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Manage Area:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/addarea?flag=loadZone">Add Area</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addarea?flag=search">Search Area</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Manage Events:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddEvents.jsp">Add Events</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addevent?flag=search">Search Events</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Manage Schedule:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/addschedule?flag=loadName">Add Schedule</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addschedule?flag=search">Search Schedule</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Medical Waste :</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/medicalwaste?flag=loadName">Add Medical Schedule</a></li>
                          <li><a  href="<%=request.getContextPath()%>/medicalwaste?flag=search">Search Schedule</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Construction Waste :</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/constructionwaste?flag=loadName">Add Construction Schedule</a></li>
                          <li><a  href="<%=request.getContextPath()%>/constructionwaste?flag=search">Search Schedule</a></li>
                      </ul>
                  </li>
                  
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Manage Message:</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/MessageAll?flag=loadUser">New message</a></li>
                          <li><a  href="<%=request.getContextPath()%>/MessageAll?flag=search1">Inbox message</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-envelope"></i>
                          <span>Manage Complain</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/postcomplain?flag=search">View Complain</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Manage Feedback</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">Search Feedback</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Manage Company</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/companylist?flag=search">Company List</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-comments-o"></i>
                          <span>Manage Government</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="lobby.html">Lobby</a></li>
                          <li><a  href="chat_room.html"> Chat Room</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-comments-o"></i>
                          <span>Manage User</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="lobby.html">Lobby</a></li>
                          <li><a  href="chat_room.html"> Chat Room</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-glass"></i>
                          <span>Galary</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="Galary.jsp">Manage</a></li>
                      </ul>
                  </li>
                  
                  <!--multi level menu start-->
                   <!--multi level menu end-->

              </ul>
              <!-- sidebar menu end-->
          </div>

</body>
</html>