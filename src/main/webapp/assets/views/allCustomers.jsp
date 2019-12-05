<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>

<style>
	tr:first-child{
		font-weight: bold;
		background-color: #c6c9c4; 
	}
</style>
</head>

<body>
	<h2>List of Employees</h2>  
    <table>
        <tr>
            <td>Name</td><td>Email</td><td>Phone</td><td>Password</td><td>Confirm</td><td>Operation</td>
        </tr>
        <c:forEach items="${customer}" var="custome">
            <tr>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.phone}</td>
            <td>${customer.password}</td>
            <td>${customer.confirm}</td>
            <td><a href="<c:url value='/edit-${customer.name}-customer' />">${customer.name}</a></td>
            <td><a href="<c:url value='/update-${customer.name}-customer' />">${customer.name}</a></td>
            <td><a href="<c:url value='/delete-${customer.name}-customer' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/new' />">Add New Customer</a>
</body>
</html>