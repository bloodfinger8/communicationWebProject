<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${list }" var="list" varStatus="i">
		<div style="border:1px solid blue;">
		${list.id} <div id="divContent_modifyReply${i.count}">${list.logtime} <br>
		${list.content}</div>
		<c:if test="${logId == list.id}">
			<input type="button" class="modifyReply" name="${list.seq}" id="modifyReply${i.count}" value="수정">
			<input type="button" class="deleteReply" name="${list.seq}" id="deleteReply${i.count}" value="삭제">
			<div class="modifyReply${i.count}"></div>
		</c:if>
		</div>
</c:forEach>


    