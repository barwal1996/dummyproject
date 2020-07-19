<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>Search Customer</title>
</head>
<%@ include file="header.jsp"%>
<br>
<div class="container border">
<br>
	<form:form action="/search" method="post" >
		<div class="row">
			<div class="form-group col-sm-4">
				<label for="From Date">From Date</label> <input type="date"
					placeholder="Selct From  Date" name="fromDate" id="fromDate" tabindex=1
					class="form-control" required />
			</div>
			<div class="form-group col-sm-4">
				<label for="To Date">To Date</label> <input type="date"
					placeholder="Selct To  Date" name="toDate" id="toDate" tabindex=2
					class="form-control" required />
			</div>
			<div class="center-block col-sm-4 align-right">
			<br>
				<button type="submit" class="btn btn-success">Search</button>
			</div>
		</div>
	</form:form>

</div>

<div class="container border">
<br>
 <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Mobile number</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerlist}">
     <tr>
        <td>${customer.firstName}</td>
        <td>${customer.lastName }</td>
        <td>${customer.email}</td>
        <td>${customer.phone }</td>
      </tr>
    </c:forEach>
     
      
    </tbody>
  </table>
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


