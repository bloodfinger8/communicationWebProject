<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="../css/loginForm.css">
</head>
  <body>
    <form name="loginForm" class="loginForm" method="post" action="http://localhost:8080/communicationWebProject/member/login.do">
      <h2>login</h2>
      <input type="text" name="id" id="id" placeholder="ID">
      <input type="password" name="pwd" id="pwd" placeholder="password">
     
    </form>
  </body>
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="../js/member.js"></script>
  
</html>
