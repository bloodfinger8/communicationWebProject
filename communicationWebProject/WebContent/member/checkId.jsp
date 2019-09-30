<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${id}는 사용 가능
<br><br>
<input type="button" value="ID사용" onclick="checkIdClose('${id }')">
	

	
</body>

<script src="../js/member.js" type="text/javascript"> </script>
</html>