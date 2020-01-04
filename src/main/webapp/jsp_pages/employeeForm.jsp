<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
.error 
    {
    color: #ff0000;
    font-size: 12px;
    }
</style>

</head>
<body background='imageFolder/emsb.jpeg'>
<h1 align="center"> ENTER EMPLOYEE DATA</h1>
<div align="center">
<form:form action="addNewEmployee" method="post" modelAttribute="employee" enctype="multipart/form-data">
     <table class="addEmpTable">
          <tr><td><spring:message code="lbl.empFirstName"/></td><td><form:input path="employeeFirstName" placeholder="Enter First Name"/></td></tr>
          <tr><td colspan="2" align="center"><form:errors path="employeeFirstName" cssClass="error" /></td></tr>
          <tr><td><spring:message code="lbl.empLastName"/></td><td><form:input path="employeeLastName" placeholder="Enter Last Name"/></td></tr>
          <tr><td colspan="2" align="center"><form:errors path="employeeLastName" cssClass="error" /></td></tr>
          <tr><td><label>Other Names:</label></td><td><form:input path="employeeOtherName" placeholder="Enter Other Name"/></td></tr>
          <tr><td><spring:message code="lbl.empDOB"/><td><form:input path="employeeDOB" placeholder="Select Date Of Birth" id="datepicker-1"/></td></tr>
          <tr><td colspan="2" align="center"><form:errors path="employeeDOB" cssClass="error" /></td></tr>
          <tr><td><spring:message code="lbl.empGender"/></td>
              <td><form:radiobutton path="employeeGender" value="Male" checked="true"/>Male
                 <form:radiobutton path="employeeGender" value="Female"/>Female
              </td></tr>
          <tr><td><spring:message code="lbl.empDeptName" />
              <td> <form:select path="employeeDeptName">
              <c:forEach items="${departments}" var="department">
              <option value="${department.deptName}">${department.deptName}</option>
              </c:forEach>
              </form:select></td></tr>
          <tr><td><spring:message code="lbl.empJobType"/>
          <td><form:select path="employeeJobType"> 
                    <form:option value="FullTime" label="Full Time"/>
                    <form:option value="PartTime" label="Part Time"/>
              </form:select>
          </td></tr>
          <tr><td><spring:message code="lbl.empContractDuration"/></td>
          <td><form:select path="employeeContractDuration"> 
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
           <tr><td><spring:message code="lbl.empPhoto"/></td><td><form:input type="file" path="employeePhoto"/></td></tr>
          <tr><td> </td><td align="left"> <input type="submit" value="Save Employee"></td></tr>
     </table>
    </form:form>
 </div>
</body>
</html>