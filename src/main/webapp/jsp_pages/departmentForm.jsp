<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >

</head>
<body background='imageFolder/emsb.jpeg'>

<div class="wrapper" style="overflow-x:auto; background-color: lightblue;">
    <%@include file="./shared/headerInfo.jsp" %>
<div class="sideMenu" style="overflow-x:auto;">
    <%@include file="./shared/sideBar.jsp" %>
</div>
<div class="content" align="center" style="overflow-x:auto;">
<form:form action="addDepartment" method="post" modelAttribute="department">
     <table class="addDeptTable">
          <tr><td><label>Department Name:</label></td><td><form:input path="deptName" placeholder="Enter Department Name"/></td></tr>
          <tr><td><label>Department Head:</label></td><td><form:input path="deptHead" placeholder="Enter Department Head"/></td></tr>
          <tr><td><label>Floor Level:</label></td><td><form:input path="deptLocation" placeholder="Enter Department Floor Level"/></td></tr>
          <tr><td> </td><td align="left"> <input type="submit" value="Save Department"></td></tr>
     </table>
    </form:form>
 </div>
 </div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>
