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
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.png">

    <title>Log-In</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath }/js/respond.min.js"></script>
    <![endif]-->
    
    <!-- <script type="text/javascript">

  function checkPassword(str)
  {
    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
    return re.test(str);
  }

  function checkForm(form)
  {
    if(form.companyname.value == "") {
      alert("Error: Companyname cannot be blank!");
      form.companyname.focus();
      
    }
    re = /^\w+$/;
    if(!re.test(form.companyname.value)) {
      alert("Error: companyname must contain only letters, numbers and underscores!");
      form.username.focus();
      
    }
    if(form.pass1.value != "" && form.pass1.value == form.pass2.value) {
      if(!checkPassword(form.pass1.value)) {
        alert("The password you have entered is not valid!");
        form.pass1.focus();
        
      }
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.pass1.focus();
      
    }
    return true;
  }

</script>
 -->    
 
 <script>

var temp;

	function return_validate()
	{
		alert("hello");
		
		var email=document.getElementById("email1");
		var span1=document.getElementById("span1");
		
		var xmlhttp;
		if (window.XMLHttpRequest)
		{// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				alert(xmlhttp.responseText);
				var jsonObj = JSON.parse(xmlhttp.responseText);
				var returnObj = jsonObj[0].returnFlag;
				
				if(returnObj == "true")
				{
					span1.style.display="none";
					temp="true";
				}
				else if(returnObj == "false")
				{
					span1.style.display="";
				}
			}
		}
		xmlhttp.open("get", "${pageContext.request.contextPath}/companyregistration?flag=validate&email="+email.value, true);
		xmlhttp.send();	
	}
	
	function returnValidate()
	{
		if(temp != "true")
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	
</script>
 
</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" name="form"  method="post" action="<%=request.getContextPath()%>/companyregistration" >
      <input type="hidden" name="flag" value="insert">
        <h2 class="form-signin-heading">sign up now</h2>
        <div class="login-wrap">
            <input type="text" name="regno" class="form-control" placeholder="Registration no" autofocus>
            <input type="text" name="companyname" class="form-control" placeholder="Company Name">
            <input type="text" name="url" class="form-control" placeholder="Website Url">
            <input type="text" name="city" class="form-control" placeholder="city">
            <input type="text" name="Address1" class="form-control" placeholder="Address 1">
            <input type="text" name="Address2" class="form-control" placeholder="Address 2">
            <span class="label label-danger">NOTE!
            								</span>
                                             Your Email Id will be your username
                                             </span> 
          <input type="text" onblur="return_validate()" id="email1" name="email" class="form-control" placeholder="Email Id">
				<div class="col-ms-4">
	            <span id="span1" style="color: #a94442;display: none;">This value already exists</span>
	        </div>
            
            <input type="text" name="phone" class="form-control" placeholder="Phone No">
            <input type="password" name="pass1" class="form-control" placeholder="Password">
            <input type="password" name="pass2" class="form-control" placeholder="Retype Password">
            <input type="hidden" name="usertype" value="Company">
            
            							<div class="form-group">
                                          Upload Registration DocumentImage
                                          <div class="col-md-5">
                                             <!--  <input type="file" class="default"> -->
                                             <iframe src="fileupload.jsp" width="300" height="100"> </iframe>
                                             
                                             
                                          </div>
               </div>
            <% 
            String c= (String)session.getAttribute("msg");
            if(c!=null)
            {
            	out.println(c);
            	session.removeAttribute("msg");
            	
            }
            
            %>
    		        
            <button class="btn btn-lg btn-login btn-block" type="submit">Join</button>
            <p>or you can sign in via social network</p>
            <div class="login-social-link">
                <a href="index.html" class="facebook">
                    <i class="fa fa-facebook"></i>
                    Facebook
                </a>
                <a href="index.html" class="twitter">
                    <i class="fa fa-twitter"></i>
                    Twitter
                </a>
            </div>
            

        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Forgot Password ?</h4>
                      </div>
                       <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                      </div> 
                      <div class="modal-footer">
                      
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                          
                          <button class="btn btn-success" type="submit" >Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>

    </div>



    <!--  placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }js/bootstrap.min.js"></script>


  </body>
</html>
