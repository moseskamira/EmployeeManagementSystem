<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center"> Enter Employee Details</h1>
<div align="center"> 
<form:form action="addNewEmployee" method="post" modelAttribute="employee">
<label>ID:</label><form:input path="employeeId"/>
<label>FirstName:</label><form:input path="employeeFirstName"/>
<label>LastName:</label><form:input path="employeeLastName"/>
<label>Other Name:</label><form:input path="employeeOtherName"/>
<label>Gender:</label><form:input path="employeeGender"/>
<label>D.O.B:</label><form:input path="employeeDOB"/>
<label>Salary:</label><form:input path="employeeSalary"/>
  <input type="submit" value="Save">
</form:form>
  
</div>
</body>
</html>