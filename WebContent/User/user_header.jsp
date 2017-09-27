<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="header">
        <div class="center">
          <!-- Logo Start -->
          <div id="logo">
                    <a href="User_index1.jsp"><img src="${pageContext.request.contextPath }/User/images/logo-green_final.png" alt="Logo"/></a>
          </div>
          <!-- Logo End -->
          
          <div id="headerright">
            <!-- Menu Navigation Start -->
            <div id="mobilemenu"></div> 
            <div id="mainmenu">
                <ul id="menu" class=""><li id="menu-item-18" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-has-children menu-item-18"><a href="../Ecobizz/index.html">Home</a>
<ul class="sub-menu">
	<li id="menu-item-65" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-65"><a href="http://imediapixel.com/demo/ecobiz/kwicks-slider/">Kwicks Slider</a></li>
	<li id="menu-item-64" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64"><a href="http://imediapixel.com/demo/ecobiz/homepage-static/">Homepage Static</a></li>
	<li id="menu-item-552" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-552"><a href="http://imediapixel.com/demo/ecobiz/homepage-with-blog/">Homepage with Blog</a></li>
</ul>
</li>
<li id="menu-item-1005" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1005"><a href="#">Services</a>
<ul class="sub-menu">
	<li id="menu-item-19" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-19"><a href="<%=request.getContextPath()%>/roadside?flag=loadName">Roadside Pickup</a></li>
	<li id="menu-item-19" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-19"><a href="<%=request.getContextPath()%>/addschedule?flag=loaddb1">Track Dustbin</a></li>
	<li id="menu-item-1006" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1006"><a href="<%=request.getContextPath()%>/medicalwaste?flag=loadschedule">Medical Waste</a></li>
	<li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="<%=request.getContextPath()%>/constructionwaste?flag=loadschedule">Construction Waste</a></li>
	<li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="../Ecobizz/services.htm">Other Waste Services</a></li>
	<li id="menu-item-1010" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1010"><a href="<%=request.getContextPath()%>/events?flag=fetchevent">Events</a></li>
	<li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="<%=request.getContextPath()%>/addschedule?flag=loadschedule">Pick up Schedule</a></li>
	
	
			<ul class="sub-menu">
			<li id="menu-item" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="../Ecobizz/services.htm">Area</a></li>
			<li id="menu-item1" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="../Ecobizz/services.htm">Transport</a></li>

			
			</ul>
			
	
</ul>
</li>
<li id="menu-item-1052" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1052"><a href="#">Extra</a>
<ul class="sub-menu">
	<li id="menu-item-761" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-761"><a href="<%=request.getContextPath()%>/User/pay_my_bill.jsp">Pay my bill</a></li>
	<li id="menu-item-761" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-761"><a href="<%=request.getContextPath()%>/postwaste?flag=postwaste">Post Waste Information</a></li>
	<li id="menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-337"><a href="<%=request.getContextPath()%>/User/postcomplain.jsp">Post Complain</a></li>
	<li id="menu-item-439" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-439"><a href="http://imediapixel.com/demo/ecobiz/shortcodes/list-style/">Help Center</a></li>
	
</ul>
</li>
<!-- <li id="menu-item-23" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-23"><a href="http://imediapixel.com/demo/ecobiz/portfolio/">Portfolio</a>
<ul class="sub-menu">
	<li id="menu-item-205" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-205"><a href="http://imediapixel.com/demo/ecobiz/portfolio/portfolio-4-columns/">Portfolio 4 columns</a></li>
	<li id="menu-item-204" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-204"><a href="http://imediapixel.com/demo/ecobiz/portfolio/portfolio-4-columns-2/">Portfolio 3 columns</a></li>
	<li id="menu-item-203" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-203"><a href="../Ecobizz/portfolio-4-columns-2-2.htm">Portfolio 2 columns</a></li>
	<li id="menu-item-202" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-202"><a href="http://imediapixel.com/demo/ecobiz/portfolio/portfolio-4-columns-2-2-2/">Portfolio 1 column</a></li>
	<li id="menu-item-201" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-201"><a href="http://imediapixel.com/demo/ecobiz/portfolio/with-category-filter/">with category filter</a></li>
	<li id="menu-item-200" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-200"><a href="http://imediapixel.com/demo/ecobiz/portfolio/with-jquery-filter/">with jquery filter</a></li>
</ul>
</li> -->
<li id="menu-item-20" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-20"><a href="<%=request.getContextPath()%>/User/About_us.jsp">About Us</a></li>
<li id="menu-item-21" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-21"><a href="<%=request.getContextPath()%>/User/contact_us.jsp">Contact Us</a></li>
</ul>            </div>
            <!-- Menu Navigation End -->
          </div>
        </div>
      </div>
