<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
 <script>  
         $(function() {  
            $( "#datepicker-1" ).datepicker();  
         });  
 </script>  
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
<h1 align="center"> ENTER EMPLOYEE DATA</h1>
<div align="center">
<form:form action="addNewEmployee" method="post" modelAttribute="employee">
     <table class="addEmpTable">
          <tr><td><label>First Name:</label></td><td><form:input path="employeeFirstName" placeholder="Enter First Name"/></td></tr>
          <tr><td><label>Last Name:</label> </td><td><form:input path="employeeLastName" placeholder="Enter Last Name"/> </td></tr>
          <tr><td><label>Other Names:</label></td><td><form:input path="employeeOtherName" placeholder="Enter Other Name"/></td></tr>
          <tr><td> <label>Date Of Birth:</label></td><td><form:input path="employeeDOB" placeholder="Select Date Of Birth" id="datepicker-1"/></td></tr>
          <tr><td><label>Gender:</label></td>
              <td><form:radiobutton path="employeeGender" value="Male" checked="true"/>Male
                 <form:radiobutton path="employeeGender" value="Female"/>Female
              </td></tr>
          <tr><td> <label>Department:</label></td>
              <td><form:select path="employeeDeptName">
                        <form:option value="HumanResource " label="Human Resource"/>
                        <form:option value="Technology" label="Technology"/>
                        <form:option value="Operations " label="Operations"/>
                        <form:option value="Networking" label="Networking"/>
                  </form:select>
               </td></tr>
          <tr><td> <label>Employment Type:</label></td>
          <td><form:select path="employeeJobType"> 
                    <form:option value="FullTime" label="Full Time"/>
                    <form:option value="PartTime" label="Part Time"/>
              </form:select>
          </td></tr>
          <tr><td> <label>Contract Duration:</label></td><td>
                  <form:select path="employeeContractDuration"> 
                       <form:option value="1" label="1 Year"/>
                       <form:option value="2" label="2 Years"/>
                       <form:option value="3" label="3 Years"/>
                       <form:option value="4" label="4 Years"/>
                       <form:option value="5" label="Above 5 Years"/>
                  </form:select>
              </td></tr>
          <tr><td><label>Gross Monthly Salary:</label></td><td><form:select path="employeeSalary"> 
                  <form:option value="12000" label="12000 Dollars"/>
                  <form:option value="15000" label="15000 Dollars"/>
                  <form:option value="27000" label="27000 Dollars"/>
                 </form:select></td></tr>
          <tr><td> </td><td align="left"> <input type="submit" value="Save Employee"></td></tr>
     </table>
    </form:form>
 </div>
</body>
</html>