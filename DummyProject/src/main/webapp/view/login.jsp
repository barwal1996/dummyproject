<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<head>

<title>login page</title>
<link href="<c:url value="/resources/static/css/style.css" />"rel="stylesheet">

</head>
<%@ include file="header.jsp"%>
<body background="<c:url value='/resources/static/images/backgroundimg.png'/>">

<div class="container">

<br>
	<h4>${error}</h4>
            <div class="regbox box">
                <img class="avatar" src="/resources/static/images/login.jpg">
                <h1>User Account</h1>
				<form action="/signIn" method="post" modelAttribute="customer">
                   <p>Email address:</p>
                   <input name="email" type="email" placeholder="Enter your email" />
				
                   <p>Password</p>
				<input type="password" name="password" placeholder="Password" name="password"  />
                   <button type="submit" class="btn btn-success" value="Login"></button>
                   
                   <a href="/register">Forget your Password?</a>
                </form>
                
</div>
</div>
</body>
  <footer class="main-footer">
    <strong>Copyright &copy; 2020 <a href="#">Demo Project</a>.</strong>
    All rights reserved.
   <style>
.main-footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}
</style>
  </footer>


