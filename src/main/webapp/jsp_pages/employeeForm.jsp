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
<body background='imageFolder/emsb.jpeg'>
<h1 align="center"> ENTER EMPLOYEE DATA</h1>

<div align="center">
<form:form action="addNewEmployee" method="post" modelAttribute="employee">
     <table id="addEmployee">
          <tr><td><label>First Name:</label></td><td><form:input path="employeeFirstName" placeholder="Enter First Name"/></td></tr>
          <tr><td><label>Last Name:</label> </td><td><form:input path="employeeLastName" placeholder="Enter Last Name"/> </td></tr>
          <tr><td><label>Other Names:</label></td><td><form:input path="employeeOtherName" placeholder="Enter Other Name"/></td></tr>
          <tr><td><label>Gender:</label></td><td><form:input path="employeeGender" placeholder="Enter Gender"/> </td></tr>
          <tr><td> <label>D.O.B:</label></td><td><form:input path="employeeDOB" placeholder="Enter Date Of Birth"/></td></tr>
          <tr><td><label>Salary:</label></td><td><form:input path="employeeSalary" placeholder="Enter Salary"/> </td>
          </tr><tr><td><a href="/"><em>Back</a> </td>
          <td align="center"> <input type="submit" value="Click To Save Employee"></td></tr>
     </table>
     </form:form>
 </div>
</body>
</html>