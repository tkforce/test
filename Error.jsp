<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
	<link href="/JSPdemo/Resource/background.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/signin/signin.css" rel="stylesheet">
<title>Insert title here</title>
</head>


<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="IndexServlet">SSID Project</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
  </div>
  <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
        <div class="progress-bar progress-bar-danger" style="width: 10%"><span class="sr-only">10% Complete (danger)</span></div>
        <div class="progress-bar progress-bar-info" style="width: 35%"><span class="sr-only">10% Complete (danger)</span></div>
      </div>



  <div class="jumbotron" style="margin-top:230px;text-align: center">
        <h1 >Error</h1>
        <p class="lead" >
        <% if(((Boolean)request.getAttribute("accIsValid")) != null &&((Boolean)request.getAttribute("accIsValid")) == false)
			     {
			  %>   ${errorauthmsg}<br>  Username: 
			  <%=  request.getParameter("username") %> 
			       Password:
			  <%=  request.getParameter("password") %><br>
			  <%
			     }
 		       if(((Boolean)request.getAttribute("ageIsValid")) != null && ((Boolean)request.getAttribute("ageIsValid")) == false)
  			   {
  			     %>${erroragemsg}
  			     <%= request.getParameter("age") %>   			     
  			   <%}%>
		</p>
    <a class="btn btn-danger" href="IndexServlet" style="border-radius: 1px;">Try Again</a>

    </div>


</body>
</html>
