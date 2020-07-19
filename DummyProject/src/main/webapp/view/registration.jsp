<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>Registeration Page</title>
</head>
<%@ include file="header.jsp"%>
<br>
<div class="container border">
<br>
	<form:form action="/register" method="post" modelAttribute="customer">
		<div class="row">
			<div class="col-sm-4 form-group">
				<label for="firstname">First Name</label> <input type="text"
					placeholder="Enter First Name" name="firstName" tabindex=1 class="form-control"
					required />
			</div>
			<div class="col-sm-4 form-group">
				<label for="firstname">Last Name</label> <input type="text"
					placeholder="Enter Last Name" tabindex=2 name="lastName" class="form-control"
					required />
			</div>
		</div>
		<div class="row">
		<div class="col-sm-4 form-group">
			<label for="email">Email address:</label> <input type="email"
				class="form-control" tabindex=3 id="email" name="email" required>
		</div>
		<div class="col-sm-4 form-group">
			<label for="phone">Mobile number :</label> <input type="number"
				class="form-control" tabindex=3 id="phone" name="phone" required>
		</div>
		</div>
		<div class="row">
			<div class="col-sm-4 form-group">
				<label for="pass">Password</label> <input type="password"
					placeholder="Enter your Password" name="password" tabindex=4 class="form-control"
					required />
			</div>
			<div class="col-sm-4 form-group">
				<label for="repass">Confirm Password</label> <input type="password"
					placeholder="ReType your Password" tabindex=5 class="form-control"
					required />
			</div>
		</div>
		<button type="submit" class="btn btn-success">Register</button>
	</form:form>
	
</div>
<br>

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

