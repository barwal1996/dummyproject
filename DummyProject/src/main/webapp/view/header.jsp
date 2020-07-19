<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/static/css/bootstrap.min.css"/>">

<title> Dummy Project </title>
</head>
<style>
#example1 {
  border: 2px solid black;
  padding: 25px;
  background: url(backgroundimg.png);
  background-repeat: no-repeat;
  background-size: auto;
}


</style>

<body background="<c:url value='/resources/static/images/backgroundimg.png'/>">

	
<div id="example1">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/">DEMO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropDown"
			aria-expanded="false" aria-labels="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
			<% if(session.getAttribute("userDetails")==null){ %>
				<li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="/registration">Register</a></li>
				<%}else{ %>
				<li class="nav-item"><a class="nav-link" href="/searchCustomer">Search Customer</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout ${userDetails.firstName}</a></li>
			<%} %>
			</ul>
		</div>

	</nav>
	</div>

	