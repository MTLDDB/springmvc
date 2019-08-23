<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="javax.servlet.http.Cookie"%>

<%
    Cookie c = new Cookie("name", "Gareen");
    c.setMaxAge(60);
    c.setPath("/");
    response.addCookie(c);
%>

<a href="getCookie1.jsp">跳转到获取cookie的页面</a>