<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E.M.S</title>
<link href="css/custom.css" rel="stylesheet">
</head>
<body>
<h3 align="center"> Enter Employee Details</h3>

<div align="center">
<form:form action="addNewEmployee" method="post" modelAttribute="employee">
     <table id="employee">
            <tr>
                <td><label>First Name:</label></td>
                <td><form:input path="employeeFirstName"/></td>
            </tr>
            <tr>
                <td><label>Last Name:</label> </td>
                 <td><form:input path="employeeLastName"/> </td>
            </tr>
            <tr>
                <td><label>Other Names:</label></td>
                <td><form:input path="employeeOtherName"/></td> 
            </tr>
            <tr>
                <td><label>Gender:</label></td>
                <td><form:input path="employeeGender"/> </td>
            </tr>
            <tr>
                <td> <label>D.O.B:</label></td>
                <td><form:input path="employeeDOB"/></td>
            </tr>
            <tr>
                <td><label>Salary:</label></td>
                <td><form:input path="employeeSalary"/> </td>
            </tr>
            <tr><td> </td>
                <td align="center"> <input type="submit" value="Click To Save Employee"></td>
            </tr>
     </table>
     </form:form>
 </div>
</body>
</html>