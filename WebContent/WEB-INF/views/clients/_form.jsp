<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="client_date">日付</label><br />
<input type="date" name="client_date" value="<fmt:formatDate value='${client.client_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${client.title}" />
<br /><br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50">${client.content}</textarea>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>