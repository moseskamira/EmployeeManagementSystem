<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
 
<style type="text/css">
.addEmpTable {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  background-color: #ddd;
  width: 40%;
  border-radius: 2em;
}
.addEmpTable td, .addEmpTable th {
  border-radius: 1em;
  padding: 8px;
}
.addEmpTable tr:nth-child(even){
	background-color: #ffffff;
	}
</style>

</head>
<body background='imageFolder/emsb.jpeg'>
<h1 align="center"> ENTER DEPARTMENT DATA</h1>
<div align="center">
<form:form action="addDepartment" method="post" modelAttribute="department">
     <table class="addEmpTable">
          <tr><td><label>Department Name:</label></td><td><form:input path="deptName" placeholder="Enter Department Name"/></td></tr>
          <tr><td><label>Department Head:</label></td><td><form:input path="deptHead" placeholder="Enter Department Head"/></td></tr>
          <tr><td><label>Floor Level:</label></td><td><form:input path="deptLocation" placeholder="Enter Department Floor Level"/></td></tr>
          <tr><td> </td><td align="left"> <input type="submit" value="Save Department"></td></tr>
     </table>
    </form:form>
 </div>
</body>
</html>