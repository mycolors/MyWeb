<%@ page import="util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //注销
    session.removeAttribute("username");
    session.invalidate();
    //地址重定向，跳转到登录页面
    response.sendRedirect(Utils.getBasePath(request) + "/login.jsp");
%>
