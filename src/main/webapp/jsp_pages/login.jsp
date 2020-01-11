<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<c:url value="/css/custom.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" >
</head>
<body>
<div class="wrapper" style="overflow-x:auto;">
 <%@include file="./shared/loginHeaderInfo.jsp" %>
 

<div class="loginContent" style="overflow-x:auto;">
<h3>LOGIN HERE</h3> 
<hr/>
<form:form action="login" method="post" modelAttribute="loginRequest">  
<table class="center" id="loginTable" style="width:40%, align:center;">
<tr><td><spring:message code="lbl.username"/></td><td><form:input path="name"/></td></tr>
<tr><td><spring:message code="lbl.password"/></td><td><form:input type="password" path="password"/></td></tr>
<tr><td colspan="2"><form:errors path="password" cssClass="error" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="LOGIN"/></td></tr> 
</table>
</form:form> 
</div>  
</div>
</body>
<%@include file="./shared/footer.jsp" %>
</html>



