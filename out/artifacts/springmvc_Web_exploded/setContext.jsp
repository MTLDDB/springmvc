<%@ page import="org.apache.struts2.components.Include" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%--%>
    <%--request.setAttribute("name","gareen");--%>
   <%--/* session.setAttribute("name","gareen");--%>
    <%--response.sendRedirect("getContext.jsp");*/--%>

<%--//    application.setAttribute("name","gareen");--%>
<%--//    System.out.println(application == request.getServletContext());--%>
<%--//    response.sendRedirect("getContext.jsp");--%>
<%--%>--%>
<c:set var="name" value="gateen" scope="request"/>
<c:remove var="name" scope="request" />
<c:out value="${name}" />
<%--<%=request.getAttribute("name")%>--%>
<%--<jsp:forward page="getContext.jsp"/>--%>
<%--<%--%>
    <%--response.sendRedirect("getContext.jsp");--%><%--该方法无法显示，name的值，
            客户端跳转，浏览器会发生一次新的访问，新的访问会产生一个新的request对象。
            所以页面间客户端跳转的情况下，是无法通过request传递数据的。--%>
<%--%>--%>