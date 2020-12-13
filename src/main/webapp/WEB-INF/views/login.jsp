<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/ce28284309.js" crossorigin="anonymous"></script>
</head>
<style>
body {
  margin: 0;
  padding: 0;
  background-color: #303aa6;
  height: 100vh;
  font-family: 'Stylish', sans-serif;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
  color: #303aa6;
}
.form{

}
</style>
<body>
<div id="login">
        <h1 class="text-center text-white pt-5"><i class="fas fa-school"></i> 한눈에 보는 개설 과목</h1>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="loginOk" method="post">
                            <h3 class="text-center text-info">로그인</h3>
                            <div class="form-group">
                                <label for="userid" class="text-info">유저ID:</label><br>
                                <input type="text" name="userid" id="userid" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">비밀번호:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group" style="padding-top: 40px">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="로그인" style="color:#303aa6;">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>