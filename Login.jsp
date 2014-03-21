<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Hello JSP</title>
<!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/signin/signin.css" rel="stylesheet">
 	<link href="/JSPdemo/Resource/background.css" rel="stylesheet">
<style type="text/css"></style>
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
          <a class="navbar-brand" href="">SSID Project</a>
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
 


<!--div class="container"><iframe src="/WEB-INF/pages/Header.jsp" height="100" frameborder="0" scrolling="no" align="center"></iframe-->
	<!--div class="jumbotron" style="height: 240px;">
        <h1>Jumbotron heading</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
    </div-->
    <br>
<div style="margin-top:5%;">
<form class="form-signin" action="Hello" method="POST">
<h2 class="form-signin-heading">Please sign in</h2>	
 <h4>Username:</h4> <input type ="text" class="form-control" placeholder="Username" name="username">
 <h4>Password:</h4> <input type="password" class="form-control" placeholder="Password" name="password"  style='margin-bottom: 0px;'>
 <h4>Nickname:</h4> <input type ="text" class="form-control"  placeholder="Nickname" name="nickname">
 <br>
 Age: <select name="age">
       <c:forEach var="age" items="${allAges.ages}">
        <c:choose>
          <c:when test="${age != myAge}">
            <option value=${age} >${age}</option>
          </c:when>
          <c:otherwise>
            <option value=${age} selected>${age}</option>
          </c:otherwise>       
        </c:choose>       
       </c:forEach>
	    </select>
 Language: <select name="language">			
            <c:forEach var="lang" items="${allLanguages.langTypes}">
             <option value=${lang} >${lang}</option>
            </c:forEach>
 		       </select>
 <br><br>
 <input  class="btn btn-lg btn-primary btn-block" style='border-radius:1px; border:0px solid transparent' type="submit" value="Submit">
 <input class="btn btn-lg btn-danger" style='width:148px ;margin-top:4px; border-radius: 1px; border:0px solid transparent ' type="reset" value="Reset">
 <input class="btn btn-lg btn-danger" style='width:148px ;margin-top:4px;margin-left:0px;border-radius: 1px; border:0px solid transparent' type="button" value="Cancel">
</form>
</div>


</body>
</html>
