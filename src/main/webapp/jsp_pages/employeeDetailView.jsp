<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Detail</title>

<style type="text/css">
#empDetail {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  background-color: #ddd;
  width: 40%;
  border-radius: 2em;
}
#empDetail td, #empDetail th {
  border: 0px;
  padding: 8px;
}
#empDetail tr:nth-child(even){
	background-color: #ffffff;
	}
</style>

</head>
<body background='imageFolder/emsb.jpeg'>
<div align="center">
<h1> DETAILS FOR ${employee.employeeFirstName} </h1>
<table border="1" id="empDetail">
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
     </table>
 </div>
</body>
</html>