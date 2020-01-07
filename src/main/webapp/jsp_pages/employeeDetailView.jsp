<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Detail</title>

<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 

</head>
<body background='imageFolder/emsb.jpeg'>

<div class="wrapper" style="overflow-x:auto; background-color: lightblue;">
    <%@include file="./shared/headerInfo.jsp" %>
<div class="sideMenu" style="overflow-x:auto;">
    <%@include file="./shared/sideBar.jsp" %>
</div>
<div class="content" align="center" style="overflow-x:auto;">
<h3> DETAILS FOR ${employee.employeeFirstName} </h3>

<table border="1" id="empDetail">
               <tr><td colspan="3" align="center">BIO DATA </td></tr>
               <tr><td rowspan="5">${employee.employeePhoto} </td> <td>First Name:</td><td>${employee.employeeFirstName}</td></tr>
               <tr><td>Last Name:</td><td>${employee.employeeLastName}</td></tr>
               <tr><td>Other Names:</td><td>${employee.employeeOtherName}</td></tr>
               <tr><td>Date Of Birth:</td><td>${employee.employeeDOB}</td></tr>
               <tr><td>Gender:</td><td>${employee.employeeGender}</td></tr>
               <tr><td colspan="3" align="center">OTHER INFORMATION </td></tr>
               <tr><td> </td><td>Department:</td> <td>${employee.employeeDeptName} </td></tr>
               <tr><td> </td><td>Job Type:</td> <td>${employee.employeeJobType} </td></tr>
               <tr><td> </td><td>Contract Duration:</td> <td>${employee.employeeContractDuration} </td></tr>
               <tr><td> </td><td>Salary:</td> <td>${employee.employeeSalary}</td><tr>
               </tr>
     </table>
 </div>
 </div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>