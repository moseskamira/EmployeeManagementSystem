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
<body>

<div align="center">
<h1> SEARCH RESULT </h1>
<table border="1" id="employees">
           <tr>
               <th>FIRST NAME </th>
               <th>LAST NAME</th>
               <th>GENDER</th>
               <th>SALARY </th> 
               <th colspan="2">ACTION </th> 
               </tr>
               <c:forEach items="${searchResult}" var="employee">
               <tr>
                   <td>${employee.employeeFirstName}</td>
                   <td>${employee.employeeLastName}</td>
                   <td>${employee.employeeGender}</td>
                    <td>${employee.employeeSalary}</td>
                    <td><a href="editEmployeeForm?employeeId=${employee.employeeId}">Edit</a></td>
                    <td><a href="deleteEmployee?employeeId=${employee.employeeId}">Delete</a></td>
               </tr>
               </c:forEach>
     </table>
 </div>

</body>
</html>