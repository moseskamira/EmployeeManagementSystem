<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>

<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >

</head>
<body background='imageFolder/emsb.jpeg'>

<div class="wrapper" style="overflow-x:auto; background-color: lightblue;">
<h1 align="center">EMPLOYEE MANAGEMENT SYSTEM </h1>
<h3 align="center">E.M.S</h3>

<div class="sideMenu" style="overflow-x:auto;">
<h2 align="center">ADMIN MENU</h2>
<table id="adminMenu" class="center">
       <tr> <td align="left"><a href="newDepartmentForm"> <em><font color="blue">Create Department</font></em></a></td></tr>
       <tr><td align="left"><a href="newEmployeeForm"> <em><font color="blue">New Employee !</font></em></a></td></tr>
     </table>
</div>
<div class="content" align="center" style="overflow-x:auto;">


     <form action="search" method="get" class="center">
     <table id="indexTopTable" class="center">
           <tr><td align="center"><input type="text" name="myKeyword"/ placeholder="CASE SENSITIVE SEARCH"><input type="submit" value="Search"></td></tr>
     </table>
     </form>
     <table border="1" id="employees" class="center" >
           <tr>
               <th>First Name </th>
               <th>Last Name</th>
               <th>Gender</th>
               <th>Department</th>
               <th>Salary </th>
               <th colspan="3">Action </th>
               </tr>
               <c:forEach items="${employees}" var="employee">
               <tr>
                   <td>${employee.employeeFirstName}</td>
                   <td>${employee.employeeLastName}</td>
                   <td>${employee.employeeGender}</td>
                   <td>${employee.employeeDeptName}</td>
                   <td>${employee.employeeSalary}</td>
                   <td align="center"><a href="employeeDetail?employeeId=${employee.employeeId}">Detail</a></td><td align="center"><a href="editEmployeeForm?employeeId=${employee.employeeId}">Edit</a></td><td align="center"><a href="deleteEmployee?employeeId=${employee.employeeId}">Delete</a></td>
               </tr>
               </c:forEach>
     </table>
 </div>
 </div>
  <div class="footer" align="center"> 
     <footer class="center">  
     <p>Designed and Implemented By: Moses Kamira Talemwa</p>  
     <p>E-mail To: <a href="mailto:moses.african@gmail.com">moses.african@gmail.com</a>.</p>  
     <p>Repository Link: <a href="https://github.com/moseskamira/EmployeeManagementSystem">moseskamira</a></p> 
     </footer>
 </div>
</body>
 
</html>