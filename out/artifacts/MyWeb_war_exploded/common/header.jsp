<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <div class="logo">Todododo</div>
    <ul>
        <li class="first"><a href="index.jsp"></a></li>
        <li class="item"><a href="javascript:void(0)">首页</a></li>
        <li class="item"><a href="javascript:void(0)">技术</a></li>
        <li class="item"><a href="javascript:void(0)">随笔</a></li>
        <li class="item"><a href="javascript:void(0)">个人</a></li>
    </ul>
    <div class="login">
        <c:choose>
            <c:when test="${empty sessionScope.username}">
                <span><a href="login.jsp">登录</a> </span>
                <span>|</span>
                <span><a href="javascript:void(0)">注册</a> </span>
            </c:when>
            <c:otherwise>
                <span><a href="javascript:void(0)">欢迎您，${sessionScope.username}</a> </span>
                <span>&nbsp;|&nbsp;</span>
                <span><a href="${pageContext.request.contextPath}/controller/logoutController.jsp">登出</a> </span>
            </c:otherwise>
        </c:choose>
    </div>

</div>
