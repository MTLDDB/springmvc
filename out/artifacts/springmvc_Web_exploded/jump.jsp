<%@ page import="jdk.nashorn.internal.objects.annotations.Function" %>
jump page

<button id="jump" value="jump" />
 <%--   <%

        response.sendRedirect("testJsp.jsp");
%>--%>
<jsp:forward page="testJsp.jsp"/><%--地址栏不变--%>
