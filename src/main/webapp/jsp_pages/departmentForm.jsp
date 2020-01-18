<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >
</head>
<body style="background-color: lightblue;">
<div class="wrapper" style="overflow-x:auto;">
    <%@include file="./shared/headerInfo.jsp" %>
<div class="sideMenu" style="overflow-x:auto;">
    <%@include file="./shared/sideBar.jsp" %>
</div>
<div class="content" align="center" style="overflow-x:auto;">
<h5>ADD DEPARTMENT </h5>
<form:form action="addDepartment" method="post" modelAttribute="department">
     <table class="addDeptTable" style="width:60%">
          <tr><td><spring:message code="lbl.deptName"/></td><td><form:input path="deptName" placeholder="Enter Department Name"/></td></tr>
          <tr><td><spring:message code="lbl.deptHead"/></td><td><form:select path="deptHead">
              <c:forEach items="${employees}" var="employee">
              <option value="${employee.employeeFirstName} ${employee.employeeLastName}">${employee.employeeFirstName} ${employee.employeeLastName}</option>
              </c:forEach>
              </form:select></td></tr>
          <tr><td><spring:message code="lbl.deptFloor"/></td>
               <td> <form:select path="deptLocation"> 
                          <form:option value="First Floor" label="First Floor"/>
                          <form:option value="Second Floor" label="Second Floor"/>
                           <form:option value="Third Floor" label="Third Floor"/>
                          <form:option value="Fourth Floor" label="Fourth Floor"/>
                   </form:select>
                </td></tr>
                <tr><td colspan="2"><form:errors path="deptName" cssClass="error" /></td></tr>
          <tr><td> </td><td align="left"> <input type="submit" value="Save Department"></td></tr>
     </table>
    </form:form>
 </div>
 </div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>
