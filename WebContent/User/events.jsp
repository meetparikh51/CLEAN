<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en-US"> <![endif]-->
<!--[if IE 9]>    <html class="no-js lt-ie10" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="wf-opensans-n4-active wf-active js no-touch" lang="en-US"><!--<![endif]--><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>Events</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/User/language-selector.css" type="text/css" media="all">

<meta name="generator" content="WordPress 4.1.1">
<meta name="robots" content="follow, all">
<link rel="stylesheet" href="${pageContext.request.contextPath }/User/css/style.css" type="text/css" media="screen">
<link rel="alternate" id="imx_templateurl" href="http://imediapixel.com/demo/ecobiz/wp-content/themes/ecobiz-dev">
<link rel="alternate" type="application/rss+xml" title="ECOBIZ RSS Feed" href="http://imediapixel.com/demo/ecobiz/feed/">
<link rel="pingback" href="http://imediapixel.com/demo/ecobiz/xmlrpc.php">
<link rel="shortcut icon" href="http://imediapixel.com/demo/ecobiz/wp-content/themes/ecobiz-dev/images/favicon.ico">

                        <script async="" type="text/javascript" src="${pageContext.request.contextPath }/User/with%20jquery%20filter%20_%20ECOBIZ_files/webfont.js"></script><script async="" type="text/javascript" src="${pageContext.request.contextPath }/User/with%20jquery%20filter%20_%20ECOBIZ_files/webfont.js"></script><script>
                            /* You can add more configuration options to webfontloader by previously defining the WebFontConfig with your options */
                            if ( typeof WebFontConfig === "undefined" ) {
                                WebFontConfig = new Object();
                            }
                            WebFontConfig['google'] = {families: ['Open+Sans:400&amp;subset=latin']};

                            (function() {
                                var wf = document.createElement( 'script' );
                                wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.5.3/webfont.js';
                                wf.type = 'text/javascript';
                                wf.async = 'true';
                                var s = document.getElementsByTagName( 'script' )[0];
                                s.parentNode.insertBefore( wf, s );
                            })();
                        </script>
                    <link rel="alternate" type="application/rss+xml" title="ECOBIZ » Feed" href="http://imediapixel.com/demo/ecobiz/feed/">
<link rel="alternate" type="application/rss+xml" title="ECOBIZ » Comments Feed" href="http://imediapixel.com/demo/ecobiz/comments/feed/">
<link rel="alternate" type="application/rss+xml" title="ECOBIZ » with jquery filter Comments Feed" href="http://imediapixel.com/demo/ecobiz/portfolio/with-jquery-filter/feed/">
<link rel="stylesheet" id="imediapixel_prettyphoto-css" href="${pageContext.request.contextPath }/User/prettyPhoto.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixe_nivo-slider-css" href="${pageContext.request.contextPath }/User/nivo-slider.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixel_kwicks-css" href="${pageContext.request.contextPath }/User/kwicks.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixel_slicknav-css" href="${pageContext.request.contextPath }/User/slicknav.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixe_mediaquery-css" href="${pageContext.request.contextPath }/User/responsive.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixel_colorpicker-css" href="${pageContext.request.contextPath }/User/colorpicker.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixel_style_switcher-css" href="${pageContext.request.contextPath }/User/style-switcher.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="imediapixel-demo-theme-css" href="${pageContext.request.contextPath }/User/default.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="wpml-cms-nav-css-css" href="${pageContext.request.contextPath }/User/navigation.css" type="text/css" media="all">
<link rel="stylesheet" id="cms-navigation-style-base-css" href="${pageContext.request.contextPath }/User/cms-navigation-base.css" type="text/css" media="screen">
<link rel="stylesheet" id="cms-navigation-style-css" href="${pageContext.request.contextPath }/User/cms-navigation.css" type="text/css" media="screen">
<link rel="stylesheet" id="imediapixel_stylecustom-css" href="${pageContext.request.contextPath }/User/style-custom.css" type="text/css" media="screen, all">
<style id="imediapixel_stylecustom-inline-css" type="text/css">
body { background-color: #669100;}
body.bgpattern { background-image: url(${pageContext.request.contextPath }/User/images/gravel.png); background-repeat: repeat;background-size: auto;}
body { font-family: Arial, Helvetica, sans-serif; } p, ul li, ol li { color: #666666;font-size: 12px;} p { line-height: 21px;}
h1, h2, h3, h4, h5, h6 { font-family: Open Sans, Arial, Helvetica, sans-serif; font-weight: 400; font-style: ;}
#mainmenu ul li a { font-family: Open Sans, Arial, Helvetica, sans-serif; font-weight: 400; font-style: ; }

</style>
<link rel="stylesheet" id="elusive-iconfont-styles-css" href="${pageContext.request.contextPath }/User/elusive-webfont.css" type="text/css" media="screen, all">
<link rel="stylesheet" id="elusive-iconfont-custom-css" href="${pageContext.request.contextPath }/User/elusive-webfont-custom.css" type="text/css" media="screen, all">
                        <link href="${pageContext.request.contextPath }/User/css.css" rel="stylesheet"><script>
                            /* You can add more configuration options to webfontloader by previously defining the WebFontConfig with your options */
                            if ( typeof WebFontConfig === "undefined" ) {
                                WebFontConfig = new Object();
                            }
                            WebFontConfig['google'] = {families: ['Open+Sans:400&amp;subset=latin']};

                            (function() {
                                var wf = document.createElement( 'script' );
                                wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.5.3/webfont.js';
                                wf.type = 'text/javascript';
                                wf.async = 'true';
                                var s = document.getElementsByTagName( 'script' )[0];
                                s.parentNode.insertBefore( wf, s );
                            })();
                        </script>
                    <script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_005.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery-migrate.js"></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://imediapixel.com/demo/ecobiz/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://imediapixel.com/demo/ecobiz/wp-includes/wlwmanifest.xml"> 
<meta name="generator" content="WordPress 4.1.1">
<link rel="shortlink" href="http://imediapixel.com/demo/ecobiz/?p=198">
<meta name="generator" content="WPML ver:3.1.8.2 stt:1,4;0">
<link rel="alternate" hreflang="en-US" href="http://imediapixel.com/demo/ecobiz/portfolio/with-jquery-filter/">
<link rel="alternate" hreflang="fr-FR" href="http://imediapixel.com/demo/ecobiz/portfolio/with-jquery-filter/?lang=fr">

<style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>

<body class="page page-id-198 page-child parent-pageid-8 page-template page-template-portfolio-jqueryfilter page-template-portfolio-jqueryfilter-php bgpattern bgimage"> 	</div>        	
  <div id="wrapper">
    <div class="header-contact-box">
            <div id="flags_language_selector"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/en.png" alt="en" height="12" width="18"><a href="http://imediapixel.com/demo/ecobiz/portfolio/with-jquery-filter/?lang=fr"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/fr.png" alt="fr" height="12" width="18"></a></div>
            <ul class="header-contact">
                  <li><i class="icon-phone"></i> +62 123456</li>
                          <li><i class="icon-envelope"></i> <a href="mailto:imediapixel@gmail.com">imediapixel@gmail.com</a></li>
            </ul>
        </div>
    <div class="clear"></div>
    <div id="topwrapper"></div>
    <div id="mainwrapper">
      <!-- Header Start -->
      <jsp:include page="user_header.jsp"></jsp:include>
      <!-- Header End  --> 
             
            
              <!-- Page Heading --> 
        <div id="page-heading">
          <img src="with%20jquery%20filter%20_%20ECOBIZ_files/page-heading.jpg" alt="">
          <div class="heading-text">
            <h3>Events</h3>
            <p></p>
          </div>
        </div>
        <!-- Page Heading End -->
        
      <div class="clear"></div>
            
      <div class="center">
            
                  <div class="breadcrumb">
            <div class="breadcrumb breadcrumbs"><div class="breadcrumbs-plus"><p><span class="breadcrumbs-title">You are here: </span><a href="http://imediapixel.com/demo/ecobiz/" class="home">Home</a> <span class="separator">»</span> <a href="http://imediapixel.com/demo/ecobiz/portfolio/" title="Portfolio">Portfolio</a> <span class="separator">»</span> with jquery filter</p></div></div>          </div>
                
      
        <!-- Main Content Wrapper -->
        <div class="maincontent-full">
          <br>
        <!-- Portfolio Filter //-->
    			<ul id="filter"> 
 			      <li><a class="current" href="#all"><span>All</span></a></li>
          	<li><a href="#web-design">Web Design</a></li><li><a href="#video">Video</a></li><li><a href="#printing">Printing</a></li>        	</ul>
    		<!-- Portfolio Filter End //-->
          
          <div class="clear"></div>
          
          <ul class="portfolio-4col-filterable">
          <li class="web-design" style="width: 800px;">   
          
			<c:forEach items="${sessionScope.search}" var="x">
		
          <div class="portfolio-blockimg3" style="float: left;">
        <div class="portfolio-imgbox3" style="float: left;">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/1133324446-6571.jpg" class="fancybox" title="Portfolio item 1">
                                                      <img style="opacity: 1;height: 86px !important; width: 196px  !important;" src="<%=request.getContextPath()%>/doc/${x.path}" class="boximg-pad fade" alt="Portfolio item 1">
                            </a>
                        </div>
                </div>
                <div style="float:left"></div> <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-1/">${x.eventName}</a></h4>
                 <p>${x.description}</p>
                  <p>${x.venue}</p>
                   <p>${x.date}"</p>
                   <p>${x.time}</p>
                  <!--  <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-1/" class="button white small">View Detail »</a></p> -->     
              </div>
              </span>
                           	</c:forEach>
              
              
            </li>            
          <!-- <li class="web-design">
               <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/1133387918-13181.jpg" class="fancybox" title="Portfolio item 2">
                                                      <img style="opacity: 0.6;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387918-13181-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 2">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-2/">Portfolio item 2</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-2/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="printing
web-design
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/srv6.jpg" class="fancybox" title="Portfolio item 3">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387918-13127-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 3">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-3/">Portfolio item 3</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-3/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="printing
web-design
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/srv4.jpg" class="fancybox" title="Portfolio item 4">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387918-1312-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 4">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-4/">Portfolio item 4</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-4/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="web-design
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/srv1.jpg" class="fancybox" title="Portfolio item 5">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/srv1-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 5">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-5/">Portfolio item 5</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-5/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="video
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://vimeo.com/16765716" class="fancybox" title="Portfolio item 6">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387538-132-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 6">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-6/">Portfolio item 6</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-6/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="printing
video
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="https://www.youtube.com/watch?v=pEDQ1z1-PvU" class="fancybox" title="Portfolio item 7">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387538-1314-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 7">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-7/">Portfolio item 7</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-7/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
          <li class="printing
">              <div class="portfolio-blockimg3">
                <div class="portfolio-imgbox3">
                    <div class="zoom">
                                                        <a href="http://imediapixel.com/demo/ecobiz/wp-content/uploads/2011/05/1133387538-1396.jpg" class="fancybox" title="Portfolio item 8">
                                                      <img style="opacity: 1;" src="with%20jquery%20filter%20_%20ECOBIZ_files/1133387538-1396-196x86.jpg" class="boximg-pad fade" alt="Portfolio item 8">
                            </a>
                        </div>
                </div>
                <h4><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-8/">Portfolio item 8</a></h4>
                <p>sed pretium elit etiam convallis, sem molestie bibendum scelerisque arcu, ac adipiscing amet consectetur</p>
                <p><a href="http://imediapixel.com/demo/ecobiz/portfolio_item/portfolio-item-8/" class="button white small">View Detail »</a></p>     
              </div>
            </li>            
     -->                </ul>
        </div>
        <!-- Main Content Wrapper End -->
    
        </div>
      <div class="clear"></div>
    </div>

    <!-- Footer Start -->
    <div id="bottomwrapper"></div>
    
    <div id="footer">
              
    <!-- Footer Box #1 -->
      <div class="footerbox">
                <h4>Categories</h4>
        <ul>
          	<li class="cat-item cat-item-1"><a href="http://imediapixel.com/demo/ecobiz/category/blog/" title="Category for company blog and news">Blog</a>
</li>
	<li class="cat-item cat-item-16"><a href="http://imediapixel.com/demo/ecobiz/category/eco-business/" title="It's all about Eco Business">Eco Business</a>
</li>
	<li class="cat-item cat-item-17"><a href="http://imediapixel.com/demo/ecobiz/category/financial/" title="Market and Financial Planning">Financial</a>
</li>
 
        </ul>
              </div>
      
      <!-- Footer Box #2 -->
      <div class="footerbox">
              <h4>Links</h4>
        <ul>
          <li><a href="http://codex.wordpress.org/">Documentation</a></li>
<li><a href="http://wordpress.org/extend/plugins/">Plugins</a></li>
<li><a href="http://wordpress.org/extend/ideas/">Suggest Ideas</a></li>
<li><a href="http://wordpress.org/support/">Support Forum</a></li>
<li><a href="http://planet.wordpress.org/">WordPress Planet</a></li>
        </ul>
              </div>
      
      <!-- Footer Box #3 -->
      <div class="footerbox">
              <h4>Our Address</h4>
        <ul class="addresslist">        
                  <li>
            Jln. Damai menuju Syurga No. 14,<br>Jakarta 20035,<br>Indonesia          </li>
                          <li><strong>Phone </strong>: +62 123456</li>
                            <li><strong>FAX </strong>: +62 123456</li>
                          <li><strong>Email </strong>: <a href="mailto:imediapixel@gmail.com">imediapixel@gmail.com</a></li>
                </ul>
              </div>
      
      <!-- Footer Box #4 -->
      <div class="footerbox box-last">
        <a href="http://imediapixel.com/demo/ecobiz"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/footerlogo.png" alt="Footer Logo" class="alignleft"></a>
        <div class="clear"></div>      
                        <ul class="social-links">
                            <li>
            <a href="http://twitter.com/imediapixel"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/twitter.png" alt="Twitter"></a>
          </li>
                              <li>
            <a href="#"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/facebook.png" alt="Facebook"></a>
          </li>
                              <li>
            <a href="#"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/linkedin.png" alt="Linkedin"></a>
          </li>
                              <li>
            <a href="skype:#?call"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/skype.png" alt="skype"></a>
          </li>
                              <li>
            <a href="http://www.flickr.com/photos/33193193@N03"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/flickr.png" alt="Flickr"></a>
          </li>
                              <li>
            <a href="http://www.youtube.com/user/#"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/youtube.png" alt="youtube"></a>
          </li>
                    <li><a href="http://imediapixel.com/demo/ecobiz/feed/"><img src="with%20jquery%20filter%20_%20ECOBIZ_files/rss.png" alt="RSS"></a></li>
        </ul>
      </div>      <div class="clear"></div>
      
      <div class="bottom">
        <!-- Footer Menu -->
        <div class="footermenu">
          <ul id="menu-footer-menu" class=""><li id="menu-item-77" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-77"><a href="http://imediapixel.com/demo/ecobiz/">Home</a></li>
<li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78"><a href="http://imediapixel.com/demo/ecobiz/about/">About</a></li>
<li id="menu-item-87" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-87"><a href="http://imediapixel.com/demo/ecobiz/services/">Services</a></li>
<li id="menu-item-79" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-79"><a href="http://imediapixel.com/demo/ecobiz/blog/">Blog</a></li>
<li id="menu-item-80" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-80"><a href="http://imediapixel.com/demo/ecobiz/contact/">Contact</a></li>
</ul>        
        </div>
        <!-- Footer Menu End -->
        
        <!-- Site Copyright -->
        <div class="copyright">
        <p>© 2007 - 2015 - Designed by <a href="http://themeforest.net/?ref=imediapixel">imediapixel.com</a></p>
        </div>
        <!-- Site Copyright End -->     
      </div>
    </div>
    <!-- Footer End  -->
  </div>
  <script type="text/javascript" src="${pageContext.request.contextPath }/User/comment-reply.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_010.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_002.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_004.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_006.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_003.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_009.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_012.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/filterable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/superfish.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_011.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/functions.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/colorpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_007.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/jquery_008.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/switcher.js"></script>
<script type="text/javascript">
/* <![CDATA[ */
var icl_vars = {"current_language":"en","icl_home":"http:\/\/imediapixel.com\/demo\/ecobiz"};
/* ]]> */
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/User/sitepress.js"></script>

<a style="display: none; position: fixed; z-index: 99;" title="&lt;i class=&quot;icon-chevron-up&quot;&gt;&lt;/i&gt;" href="#top" id="scrollUp"><i class="icon-chevron-up"></i></a><div id="collorpicker_710" class="colorpicker"><div style="background-color: rgb(179, 255, 0);" class="colorpicker_color"><div><div style="left: 150px; top: 72px;"></div></div></div><div class="colorpicker_hue"><div style="top: 117px;"></div></div><div style="background-color: rgb(93, 133, 0);" class="colorpicker_new_color"></div><div style="background-color: rgb(93, 133, 0);" class="colorpicker_current_color"></div><div class="colorpicker_hex"><input value="5d8500" maxlength="6" size="6" type="text"></div><div class="colorpicker_rgb_r colorpicker_field"><input value="93" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_rgb_g colorpicker_field"><input value="133" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_rgb_b colorpicker_field"><input value="0" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_hsb_h colorpicker_field"><input value="78" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_hsb_s colorpicker_field"><input value="100" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_hsb_b colorpicker_field"><input value="52" maxlength="3" size="3" type="text"><span></span></div><div class="colorpicker_submit"></div></div></body></html>