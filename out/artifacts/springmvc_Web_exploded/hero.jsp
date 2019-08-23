<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" import="pojo.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    request.setAttribute("killNumber", "10");
%>

c:if 的用法，运行结果：
<c:if test="${killNumber>=10}">
    超神
</c:if>
<c:if test="${killNumber<10}">
    还没超神
</c:if>
<br>
c:choose 的用法，运行结果：

<c:choose>
    <c:when test="${killNumber>=10}">
        超神
    </c:when>
    <c:otherwise>
        还没超神
    </c:otherwise>
</c:choose>
<br>
EL表达式eq的用法，运行结果：
${killNumber ge 10? "超神":"还没超神" }


${param.name}

<%
    List<String> heros = new ArrayList<String>();
    heros.add("塔姆");
    heros.add("艾克");
    heros.add("巴德");
    heros.add("雷克赛");
    heros.add("卡莉丝塔");
    request.setAttribute("heros",heros);
%>

<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>英雄</td>
    </tr>

    <c:forEach items="${heros}" var="hero" varStatus="st"  >
        <tr>
            <td>${st.count}</td>
            <td>${hero}</td>
        </tr>
    </c:forEach>
</table>

<%
    Hero hero =new Hero();
    hero.setName("盖伦");
    hero.setHp(616);

    request.setAttribute("hero", hero);
%>

英雄名字 ： ${hero.name} <br>
英雄血量 ： ${hero.hp}