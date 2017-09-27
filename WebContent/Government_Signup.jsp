<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<!DOCTYPE html>
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
    
</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="<%=request.getContextPath()%>/companylist">
      <input type="hidden" name="flag" value="insert">
        <h2 class="form-signin-heading">sign up now</h2>
        <div class="login-wrap">
            <input type="text" name="regno" class="form-control" placeholder="Employee Id" autofocus>
            <input type="text" name="companyname" class="form-control" placeholder="Name">
            <input type="text" name="Address1" class="form-control" placeholder="Address">
            <input type="text" name="Phone" class="form-control" placeholder="Phone No">
            <input type="text" name="email" class="form-control" placeholder="Email Id">
            <input type="text" name="Post" class="form-control" placeholder="Post">
            
            							<div class="form-group">
                                          <label class="control-label col-md-3">Upload Image</label>
                                          <div class="col-md-4">
                                              <input type="file" class="default">
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
            <div class="registration">
                Don't have an account yet?
                <a class="" href="registration.html">
                    Create an account
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
                          <input type="hidden" name="flag" value="login">
                          <button class="btn btn-success" type="submit" >Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }js/bootstrap.min.js"></script>


  </body>
</html>
