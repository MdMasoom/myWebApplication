<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration Form</title>

<style>
	.error {
		color:#ff0000;
	}
</style>
</head>

<body>
	<form:form method="POST" modelAttribute="customer">
        <form:input type="hidden" path="id" id="id"/>
        <table>
            <tr>
                <td><label for="name">Name: </label> </td>
                <td><form:input path="name" id="name"/></td>
                <td><form:errors path="name" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="email">Email: </label> </td>
                <td><form:input path="email" id="email"/></td>
                <td><form:errors path="email" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="phone">Phone: </label> </td>
                <td><form:input path="phone" id="phone"/></td>
                <td><form:errors path="phone" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="password">Password: </label> </td>
                <td><form:input path="password" id="password"/></td>
                <td><form:errors path="password" cssClass="error"/></td>
            </tr>
     
     		<tr>
                <td><label for="confirm">Confirm: </label> </td>
                <td><form:input path="confirm" id="confirm"/></td>
                <td><form:errors path="confirm" cssClass="error"/></td>
            </tr>
            
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    Bach<a href="<c:url value='/list' />"></a>
</body>
</html>