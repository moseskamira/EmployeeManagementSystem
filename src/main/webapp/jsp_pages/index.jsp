<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
<link href="css/custom.css" rel="stylesheet">
</head>
<body background='imageFolder/emsb.jpeg'>
<h1 align="center">EMPLOYEE MANAGEMENT SYSTEM </h1>
<h3 align="center">E.M.S</h3>
<div align="center"> 
     <form action="search" method="get">
     <table>
     <tr><td><input type="text" name="keyword"/ placeholder="CASE SENSITIVE SEARCH"><input type="submit" value="Search"></td>
         <td> </td><td></td>
        <td align="right"><a href="newEmployeeForm"> <em><font color="black">ADD EMPLOYEE</font></em></a></td></tr>
         <tr><td></td><td> </td><td></td><td> </td></tr>
     </table>
     </form>
   
     <table border="1" id="employees">
           <tr>
               <th>FIRST NAME </th>
               <th>LAST NAME</th>
               <th>GENDER</th>
               <th>SALARY </th>
               </tr>
               <c:forEach items="${message}" var="employee">
               <tr>
                   <td>${employee.employeeFirstName}</td>
                   <td>${employee.employeeLastName}</td>
                   <td>${employee.employeeGender}</td>
                    <td>${employee.employeeSalary}</td>
               </tr>
               </c:forEach>
     </table>
 </div>

</body>
<footer align="center">  
     <p>Designed and Implemented By: Moses Kamira Talemwa</p>  
     <p>For E-mail To: <a href="mailto:moses.african@gmail.com">moses.african@gmail.com</a>.</p>  
     <p>&copy; moseskamira</p> 
</footer> 
</html>