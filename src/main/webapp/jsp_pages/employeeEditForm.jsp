<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
<link href="css/custom.css" rel="stylesheet">
</head>
<body background='imageFolder/ems2.jpg'/>>
<div align="center">
<h1>EDIT ${employee.employeeFirstName}'s DATA </h1>
    <form:form action="addNewEmployee" method="post" modelAttribute="employee">
        <table border="1" id="searchedemployees">
           <tr><td><label>ID:</label></td><td> ${employee.employeeId} <form:hidden path="employeeId"/></td></tr>
           <tr><td><label>FirstName:</label></td><td><form:input path="employeeFirstName"/> </td></tr>
           <tr><td><label>LastName:</label></td><td><form:input path="employeeLastName"/> </td></tr>
           <tr><td> <label>Other Name:</label></td><td><form:input path="employeeOtherName"/></td></tr>
           <tr><td> <label>Gender:</label></td><td><form:input path="employeeGender"/></td></tr>
           <tr><td> <label>D.O.B:</label></td><td><form:input path="employeeDOB"/></td></tr>
           <tr><td> <label>Salary:</label></td><td><form:input path="employeeSalary"/></td></tr><tr>
           </td><td><td>  <input type="submit" value="Save"></td></tr>        
        </table>
     </form:form>
 </div>

</body>
</html>