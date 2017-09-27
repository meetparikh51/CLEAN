
<div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a class="active" href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <!-- <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-laptop"></i>
                          <span>Company Registration</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/CompanyRegistration.jsp">Add Company</a></li>
                          <li><a  href="<%=request.getContextPath()%>/SearchCompany.jsp">Search Company</a></li>
                         
                      </ul>
                  </li>
 -->
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Manage Staff</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/AddStaff.jsp">Add Staff</a></li>
                          <li><a  href="<%=request.getContextPath()%>/addstaff?flag=search">Search Staff</a></li>
                       
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Assign Area to Staff</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/areacompany?flag=loadName">Add Area</a></li>
                          <li><a  href="<%=request.getContextPath()%>/areacompany?flag=search">Search Area</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Manage Dustbin</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/adddustbin?flag=loadName">Add Dustbin</a></li>
                          <li><a  href="<%=request.getContextPath()%>/adddustbin?flag=search">Search Dustbin</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Manage Complain</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/postcomplain?flag=search3">Search Complain</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-envelope"></i>
                          <span>Manage Message</span>
                      </a>
                      <ul class="sub">
                         
                          <li><a  href="<%=request.getContextPath()%>/MessageAll?flag=load2">New message</a></li>
                          <li><a  href="<%=request.getContextPath()%>/MessageAll?flag=search">Inbox message</a></li>
                      
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Notification</span>
                      </a>
                      
                  <li>
                      <a href="${pageContext.request.contextPath}/google_maps.html" >
                          <i class="fa fa-map-marker"></i>
                          <span>Google Maps </span>
                      </a>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-glass"></i>
                          <span>Extra</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Blank Page</a></li>
                          <li><a  href="sidebar_closed.html">Sidebar Closed</a></li>
                          <li><a  href="people_directory.html">People Directory</a></li>
                          <li><a  href="coming_soon.html">Coming Soon</a></li>
                          <li><a  href="lock_screen.html">Lock Screen</a></li>
                          <li><a  href="profile.html">Profile</a></li>
                          <li><a  href="invoice.html">Invoice</a></li>
                          <li><a  href="search_result.html">Search Result</a></li>
                          <li><a  href="pricing_table.html">Pricing Table</a></li>
                          <li><a  href="faq.html">FAQ</a></li>
                          <li><a  href="fb_wall.html">FB Wall</a></li>
                          <li><a  href="404.html">404 Error</a></li>
                          <li><a  href="500.html">500 Error</a></li>
                      </ul>
                  </li>
                  <li>
                      <a  href="login.html">
                          <i class="fa fa-user"></i>
                          <span>Login Page</span>
                      </a>
                  </li>

                  <!--multi level menu start-->
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-sitemap"></i>
                          <span>Multi level Menu</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="javascript:;">Menu Item 1</a></li>
                          <li class="sub-menu">
                              <a  href="${pageContext.request.contextPath}/boxed_page.html">Menu Item 2</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Menu Item 2.1</a></li>
                                  <li class="sub-menu">
                                      <a  href="javascript:;">Menu Item 3</a>
                                      <ul class="sub">
                                          <li><a  href="javascript:;">Menu Item 3.1</a></li>
                                          <li><a  href="javascript:;">Menu Item 3.2</a></li>
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


