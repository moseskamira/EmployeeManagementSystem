<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<body style="background-color: lightblue;">
<div class="wrapper" style="overflow-x:auto;">
    <%@include file="./shared/headerInfo.jsp" %>
    
<div class="sideMenu" style="overflow-x:auto;">
    <%@include file="./shared/sideBar.jsp" %>
</div>
<div class="content" align="center" style="overflow-x:auto;">
    <c:if test="${employees!= null}"> 
    <%@include file="home.jsp" %> 
    </c:if> 
</div>
</div>


</body>
<%@include file="./shared/footer.jsp" %>
 
</html>