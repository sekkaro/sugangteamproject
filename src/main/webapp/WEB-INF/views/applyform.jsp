<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Stylish&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/ce28284309.js"
	crossorigin="anonymous"></script>
</head>
<style>
input[type="text"], textarea {width: 300px;}
body {
	background-image: url('../../images/background.jpg');
	background-size: cover;
	font-family: 'Stylish', sans-serif;
}

.center {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	padding: 60px;
	background-color: white;
}

#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	margin-top: 30px;
	margin-left: 50px;
	margin-bottom: 30px;
}

#list td, #list th {
	border-top: 3px solid #5092fc;
	border-bottom: 3px solid #5092fc;
	padding: 8px;
	text-align: center;
}

#list td:nth-child(odd) {
	background-color: #d2dcf0;
	color: black;
}

#div1 {
	border-top: 3px solid #4f91fa;
	border-bottom: 3px solid #4f91fa;
	text-align: center;
	font-size: 10px;
	font-weight: bold;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	background-color: #d2dcf0;
	margin-left: 50px;
	margin-top: 100px;
	width: 30%;
}

#list th {
	border-top: 3px solid #4f91fa;
	border-bottom: 3px solid #4f91fa;
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #ededed;
	color: black;
}

.btn {
	margin-left: 50px;
	border: 3px solid #4f91fa;
	width: 100px;
	font-weight: bold;
	background-color: white;
}
</style>
<body>
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-indigo w3-wide w3-padding w3-card">
			<a href="../list" class="w3-bar-item w3-button"><i class="fas fa-school"></i> <b>한눈에 보는 개설 과목</b></a>
			<!-- Float links to the right. Hide them on small screens -->
			<div class="w3-right w3-hide-small">
				<c:if test="${user.getType() == 1}">
    				<span class="w3-bar-item w3-button" style="pointer-events: none;">환영합니다, <i class="fas fa-user-graduate"></i><b>학생</b></span>
    			</c:if>
    			<c:if test="${user.getType() == 0}">
      				<span class="w3-bar-item w3-button" style="pointer-events: none;">환영합니다, <i class="fas fa-chalkboard-teacher"></i><b>교수님</b></span>
     			</c:if>
				<a href="../../login/logout" class="w3-bar-item w3-button">Logout <i
					class="fas fa-sign-out-alt"></i></a>
			</div>
		</div>
	</div>


	<div id="div1">
		<h1 style="text-align: center;">수강 신청</h1>
	</div>

	<form action="../applyok" method="post">
	<input type="hidden" name="userid" value="${user.sid}"/>
	<input type="hidden" name="courseid" value="${u.seq}"/>


		<table id="list">
			<tr>
				<td>이름</td>
				<td><span class="form-control">${u.name}</span></td>
			</tr>
			
			<tr>
				<td>코드</td>
				<td><span class="form-control">${u.code}</span></td>
			</tr>
			
			<tr>
				<td>분반</td>
				<td><span class="form-control">${u.section}</span></td>
			</tr>
			
			<tr>
				<td>강의실</td>
				<td><span class="form-control">${u.room}</span></td>
			</tr>
			
			<tr>
				<td>시간</td>
				<td><span class="form-control">${u.time}</span></td>
			</tr>
			
			<tr>
				<td>시간</td>
				<td>
				<c:if test="${u.type == 0}"><span class="form-control">A+</span></c:if>
				<c:if test="${u.type == 1}"><span class="form-control">P/F</span></c:if>
				</td>
			</tr>
			
			<tr>
				<td>정원</td>
				<td><span class="form-control">${u.capacity}</span></td>
			</tr>
			
			<tr>
				<td>교수님</td>
				<td><span class="form-control">${u.professor}</span></td>
			</tr>
			
			<tr>
				<td>학점</td>
				<td><span class="form-control">${u.credits}</span></td>
			</tr>
			
			<tr>
				<td>사유</td>
				<td><input id="note" class="form-control" type="text"
					name="note" /></td>
			</tr>

		</table>


		<a class="btn" href="../list">목록</a><span> </span> 
		<input class="btn"
			type="submit" value="신청 하기" />

	</form>


</body>
</html>




