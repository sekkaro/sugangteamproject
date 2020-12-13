<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/ce28284309.js" crossorigin="anonymous"></script>
</head>
<style>
body {
font-family: 'Stylish', sans-serif;
}

#list {
	
	
	width: 100%;
}

#list td, #list th {

	border: 1px solid black;
	padding: 8px;
	text-align: center;
}
#list {
	
	border-collapse: collapse;
	width: 100%;
 
}
#list td:nth-child(even) {
	background-color: #eff2fa;
    color:black;
 
}
#div1{
border-top:3px solid #303aa6;
border-bottom:3px solid #303aa6;
text-align:center;
font-size:20px;
font-weight:bold;

background-color: #ededed;
padding:10px;
margin-bottom:20px;
margin-top:20px;
}

#list th {
	border-top:3px solid #303aa6;
	border-bottom:3px solid #303aa6;
	
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #ededed;
	color: black;
}


</style>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-indigo w3-wide w3-padding w3-card">
    <a href="list" class="w3-bar-item w3-button"><i class="fas fa-school"></i> <b>한눈에 보는 개설 과목</b></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
    <c:if test="${user.getType() == 1}">
    <span class="w3-bar-item w3-button" style="pointer-events: none;">환영합니다, <i class="fas fa-user-graduate"></i><b>학생</b></span>
    <a href="list" class="w3-bar-item w3-button">과목목록<i class="fas fa-list"></i></a>
    </c:if>
    <c:if test="${user.getType() == 0}">
      <span class="w3-bar-item w3-button" style="pointer-events: none;">환영합니다, <i class="fas fa-chalkboard-teacher"></i><b>교수님</b></span>
      <a href="register" class="w3-bar-item w3-button">과목 추가 <i class="fas fa-plus-circle"></i></a>
     </c:if>
      <a href="../login/logout" class="w3-bar-item w3-button">Logout <i class="fas fa-sign-out-alt"></i></a>
    </div>
  </div>
</div>
<div class="container" style="padding-top: 60px">
<div id="div1">신청한 과목 목록</div>
<table class="table" id="list">
<tr>
	<th>#</th>
	<th>코드</th>
	<th>분반</th>
	<th>이름</th>
	<th>학점</th>
	<th>시간</th>
	<th>강의실</th>
	<th>정원</th>
	<th>교수님</th>
	<th>성적유형</th>
	<th>상태</th>
</tr>
<c:forEach items="${courses}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getCode()}</td>
		<td>${u.getSection()}</td>
		<td>${u.getName()}</td>
		<td>${u.getCredits()}</td>
		<td>${u.getTime()}</td>
		<td>${u.getRoom()}</td>
		<td>${u.getCapacity()}</td>
		<td>${u.getProfessor()}</td>
		<td>${u.getType() == 0 ? "A+" : "P/F"}</td>
		<td>대기</td>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>