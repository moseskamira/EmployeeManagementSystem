<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>

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
<h3>EDIT ${employee.employeeFirstName}'s DATA </h3>
    <form:form action="editEmployee" method="post" modelAttribute="employee">
        <table id="empEditForm" style="width:80%">
           <tr><td><label>ID:</label></td><td> ${employee.employeeId} <form:hidden path="employeeId"/></td></tr>
           <tr><td><label>FirstName:</label></td><td><form:input path="employeeFirstName"/> </td></tr>
           <tr><td><label>LastName:</label></td><td><form:input path="employeeLastName"/> </td></tr>
           <tr><td> <label>Other Names:</label></td><td><form:input path="employeeOtherName"/></td></tr>
           <tr><td> <label>Gender:</label></td><td><form:input path="employeeGender"/></td></tr>
           <tr><td> <label>Date Of Birth:</label></td><td><form:input path="employeeDOB"/></td></tr>
           <tr><td> <label>Department:</label></td><td><form:input path="employeeDeptName"/></td></tr>
           <tr><td> <label>Job Type:</label></td><td><form:input path="employeeJobType"/></td></tr>
           <tr><td> <label>Contract Duration:</label></td><td><form:input path="employeeContractDuration"/></td></tr>
           <tr><td> <label>Salary:</label></td><td><form:input path="employeeSalary"/></td></tr><tr>
           <tr><td></td><td>  <input type="submit" value="Save"></td></tr>        
        </table>
     </form:form>
 </div>
 </div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>
