<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>

<style type="text/css">
#empEditForm {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  background-color: #ddd;
  width: 40%;
  border-radius: 2em;
}
#empEditForm td, #empEditForm th {
  border: 0px;
  padding: 8px;
}
#empEditForm tr:nth-child(even){
	background-color: #ffffff;
	}
</style>

</head>
<body background='imageFolder/emsb.jpeg'>
<div align="center">
<h1>EDIT ${employee.employeeFirstName}'s DATA </h1>
    <form:form action="addNewEmployee" method="post" modelAttribute="employee">
        <table border="1" id="empEditForm">
           <tr><td><label>ID:</label></td><td> ${employee.employeeId} <form:hidden path="employeeId"/></td></tr>
           <tr><td><label>FirstName:</label></td><td><form:input path="employeeFirstName"/> </td></tr>
           <tr><td><label>LastName:</label></td><td><form:input path="employeeLastName"/> </td></tr>
           <tr><td> <label>Other Names:</label></td><td><form:input path="employeeOtherName"/></td></tr>
           <tr><td> <label>Gender:</label></td><td><form:input path="employeeGender"/></td></tr>
           <tr><td> <label>Date Of Birth:</label></td><td><form:input path="employeeDOB"/></td></tr>
           <tr><td> <label>Department:</label></td><td><form:input path="employeeDeptName"/></td></tr>
           <tr><td> <label>Job Type:</label></td><td><form:input path="employeeJobType"/></td></tr>
           <tr><td> <label>Contract Duration:</label></td><td><form:input path="employeeContractDuration"/></td></tr>
           <tr><td> <label>Salary:</label></td><td><form:input path="employeeSalary"/></td></tr><tr>
           </td><td><td>  <input type="submit" value="Save"></td></tr>        
        </table>
     </form:form>
 </div>
</body>
</html>