<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >

</head>
<body background='imageFolder/emsb.jpeg'>

<div align="center">
<h1> SEARCH RESULT </h1>
<table border="1" id="searchedemployees">
               <c:forEach items="${searchResult}" var="employee">
               <tr><td colspan="3" align="center">BIO DATA </td></tr>
               <tr><td rowspan="5">PROFILE PHOTO </td> <td>First Name:</td><td>${employee.employeeFirstName}</td></tr>
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
               </c:forEach>
  
     </table>
 </div>

</body>
</html>