<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>

<style type="text/css">
#employees {
font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
background-color: #ddd;
width: 80%;
}
#employees td, #employees th {
border: 1px solid #ddd;
padding: 8px;
}
#employees tr:nth-child(even){
background-color: #f2f2f2;
}
#employees tr:hover {
background-color: #ffffff;
}
#employees th {
padding-top: 8px;
padding-bottom: 8px;
text-align: center;
background-color: #000000;
text-transform: uppercase;
color: white;
}

#indexTopTable {
font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
background-color: #ddd;
width: 80%;
border-radius: 2em;
}
#indexTopTable td, #indexTopTable th {
border-radius: 1em;
padding: 8px;
}
#indexTopTable tr:nth-child(even){
background-color: #ffffff;
}
#indexTopTable tr:hover {
	background-color: #ffffff;
}
.wrapper {
height:100%;
position:relative;
text-align: center;
margin: 20px;  
}
.content {
padding-bottom:2%;
float: right;
width:76%;
}
.sideMenu {
height:80%;
float: left;
display: inline-block;
width: 20%;
text-align: left;
background-color: #ddd;
border-radius: 4px;
margin-left: 2%;
margin-right: 2%;
}

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #000000;
  color: white;
  text-align: center;
  font-size:12px;
}

table.center {
margin-left:auto; 
margin-right:auto;
}

</style>

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