<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
</head>
<body style="background-color: lightblue;">
<div class="wrapper" style="overflow-x:auto;">
    <%@include file="./shared/headerInfo.jsp" %>
<div class="sideMenu" style="overflow-x:auto;">
    <%@include file="./shared/sideBar.jsp" %>
</div>
<div class="content" align="center" style="overflow-x:auto;">
<h5>EDIT ${employee.employeeFirstName}'s DATA </h5>
    <form:form action="editEmployee" method="post" modelAttribute="employee">
        <table id="empEditForm" style="width:60%">
           <tr><td>ID:</td><td> ${employee.employeeId} <form:hidden path="employeeId"/></td></tr>
           <tr><td>FirstName:</td><td><form:input path="employeeFirstName"/> </td></tr>
           <tr><td>LastName:</td><td><form:input path="employeeLastName"/> </td></tr>
           <tr><td>Other Names:</td><td><form:input path="employeeOtherName"/></td></tr>
           <tr><td>Gender:</td><td><form:input path="employeeGender"/></td></tr>
           <tr><td>Date Of Birth:</td><td><form:input path="employeeDOB"/></td></tr>
           <tr><td>Employee Email:</td><td><form:input path="employeeEmail"/></td></tr>
          
           <tr><td>Job Type:</td><td><form:input path="employeeJobType"/></td></tr>
           <tr><td>Contract Duration:</td><td><form:input path="employeeContractDuration"/></td></tr>
           <tr><td>Salary:</td><td><form:input path="employeeSalary"/></td></tr><tr>
           <tr><td></td><td>  <input type="submit" value="Save"></td></tr>        
        </table>
     </form:form>
 </div>
 </div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>
