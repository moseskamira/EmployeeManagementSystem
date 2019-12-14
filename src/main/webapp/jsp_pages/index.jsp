<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
</head>
<body>
<h1 align="center">EMPLOYEE MANAGEMENT SYSTEM </h1>
<div align="center"> 
     <form action="search" method="get">
           <input type="text" name="keyword"/>
           <input type="submit" value="Search">
     </form><br/>
     <a href="newEmployeeForm"> Add Employee</a><br/><br/>
     <table border="1">
           <tr>
               <th>FIRST NAME </th>
               <th>LAST NAME</th>
               <th>GENDER</th>
               <th>SALARY </th> 
               <th colspan="2">ACTION </th> 
               </tr>
               <c:forEach items="${message}" var="employee">
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