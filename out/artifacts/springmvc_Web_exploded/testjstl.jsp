<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" errorPage="catch.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix='fmt' %><%--用来格式化数字--%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<${fn:substring("naemjaj", 0, 5)};/>

<%
    Date now = new Date();
    pageContext.setAttribute("now",now);
%>

完整日期: <fmt:formatDate value="${now}" pattern="G yyyy年MM月dd日 E"/><br>
完整时间: <fmt:formatDate value="${now}" pattern="a HH:mm:ss.S z"/><br>
常见格式: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>

<br>
<c:set var="money" value="888.8" />
<c:set var="pi" value="3.1415926" />
最少两个小数点:
<fmt:formatNumber type="number" value="${money}" minFractionDigits="2"/>
<br>
最多两个小数点:
<fmt:formatNumber type="number" value="${pi}" maxFractionDigits="2" />


<%
    List<String> heros = new ArrayList<String>();
    heros.add("塔姆");
    heros.add("艾克");
    heros.add("巴德");
    heros.add("雷克赛");
    heros.add("卡莉丝塔");
    request.setAttribute("heros",heros);
%>

<!-- 使用jsp中的for循环来遍历List -->
<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>英雄</td>
    </tr>

    <%
        int i =0;
        for (String hero : heros) {
            i++;
    %>

    <tr>
        <td><%=i%></td>
        <td><%=hero%></td>
    </tr>

    <%}%>

</table>


<c:set var="heros1" value="塔姆,艾克;巴德|雷克赛!卡莉丝塔" />

<c:forTokens items="${heros1}" delims=",:;|!" var="hero">
    <c:out value="${hero}" /> <br />
</c:forTokens>
<br>
<!-- 使用JSTL中的c:forEach 循环来遍历List -->
<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>英雄</td>
    </tr>

    <c:forEach items="${heros}" var="hero" varStatus="st"  >
        <tr>
            <td><c:out value="${st.count}" /></td>
            <td><c:out value="${hero}" /></td>
        </tr>
    </c:forEach>
</table>









<c:set var="hp" value="${10}" scope="request" />
<c:set var="name" value="${4}"/>

<c:choose>
    <c:when test="${hp<5}">
        <p>这个英雄要挂了</p>
    </c:when>
    <c:otherwise>
        <p>这个英雄觉得自己还可以再抢救抢救</p>
    </c:otherwise>
</c:choose>

<c:if test="${name<5}">
    <p>这个英雄要挂了</p>
</c:if>

<c:if test="${!(hp<5)}">
    <p>这个英雄觉得自己还可以再抢救抢救</p>
</c:if>

<%
    pageContext.setAttribute("weapon", null);
    pageContext.setAttribute("lastWords", "");
    pageContext.setAttribute("items", new ArrayList());
%>

<c:if test="${empty weapon}">
    <p>没有装备武器</p>
</c:if>
<c:if test="${empty lastWords}">
    <p>挂了也没有遗言</p>
</c:if>
<c:if test="${empty items}">
    <p>物品栏为空</p>
</c:if>
