<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/custom.css" rel="stylesheet">
</head>
<body background='imageFolder/emsb.jpeg'>

<div align="center">
<h1> SEARCH RESULT </h1>
<table border="1" id="searchedemployees">
               <c:forEach items="${searchResult}" var="employee">
               <tr><td>FIRST NAME: </td> <td>${employee.employeeFirstName}</td></tr>
               <tr><td>LAST NAME: </td><td>${employee.employeeLastName}</td></tr>
               <tr><td>GENDER </td><td>${employee.employeeGender}</td></tr>
                <tr><td>SALARY</td><td>${employee.employeeSalary}</td><tr>
                <tr><td align="center">ACTION</td><td align="center"><a href="editEmployeeForm?employeeId=${employee.employeeId}">Edit</a> &nbsp;<a href="deleteEmployee?employeeId=${employee.employeeId}">Delete</a></td>
               </tr>
               </c:forEach>
  
     </table>
 </div>

</body>
</html>