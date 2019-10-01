<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>communication Web</title>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../bootstrap_css/bootstrap.css">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../bootstrap_js/bootstrap.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script src="../js/board.js" type="text/javascript"> </script>
</head>
<body>
	 <div class="header">
		<jsp:include page="../template/header.jsp"/>
	</div>
	 
	<div class="content">
		<jsp:include page="${display}"/>
	</div>
	
	<footer class="tail">
		 <jsp:include page="../template/bottom.jsp"/>
 	</footer>
</body>
</html>