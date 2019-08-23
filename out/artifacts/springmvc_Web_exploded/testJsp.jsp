<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2019/8/21
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>

你好 JSP
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
    //获取客户端本地化信息
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String country = locale.getCountry();
%>

<head>
    <title>Detecting Locale</title>
</head>

<h1>Detecting Locale</h1>

<p align="center">
    <%
        out.println("Language : " + language  + "<br />");
        out.println("Country  : " + country   + "<br />");
    %>
</p>

<br>
<%
    Date date = new Date();
    DateFormat dateFormat1 = DateFormat.getDateInstance();//DateFormat为抽象类所以创建实例的时候不能加new
    DateFormat dateFormat2 = DateFormat.getTimeInstance(DateFormat.SHORT, Locale.CHINA);
    DateFormat dateFormat3 = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.DEFAULT, Locale.CHINA);
    DateFormat dateFormat4 = DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.CHINA);
    DateFormat dateFormat5 = DateFormat.getTimeInstance(DateFormat.MEDIUM, Locale.CHINA);
    DateFormat dateFormat6 = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, Locale.CHINA);
    DateFormat dateFormat7 = DateFormat.getInstance();


   /* SimpleDateFormat myfmt=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    SimpleDateFormat myfmt1=new SimpleDateFormat("yy/MM/dd HH:mm");
    SimpleDateFormat myfmt2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    SimpleDateFormat myfmt3=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 E");
    SimpleDateFormat myfmt4=new SimpleDateFormat("一年中的第D天 一年中的第w个星期 一月中的第W个星期 在一天中的k时z时区")
    System.out.println(myfmt4.format(date));
    myfmt4.applyPattern("yy-MM-dd HH:mm");//替换
    System.out.println(myfmt4.format(date));
    System.out.println(date.toString());
    System.out.println(myfmt.format(date));
    System.out.println(myfmt1.format(date));
    System.out.println(myfmt2.format(date));
    System.out.println(myfmt3.format(date));
    String s="2019年01月29日 05时39分52秒";
    System.out.println(myfmt.parse(s));
    System.out.println(myfmt.toPattern());
*/


%>
<%= dateFormat1.format(date)%><br>
<%= dateFormat2.format(date)%><br>
<%= dateFormat3.format(date)%><br>
<%= dateFormat4.format(date)%><br>
<%= dateFormat5.format(date)%><br>
<%= dateFormat6.format(date)%><br>
<%= dateFormat7.format(date)%>
<br>

<%="hello jsp"%>
<br>
<% out.println("hello jsp");%>
<br>
<%
    List<String> words = new ArrayList<String>();
    words.add("好");
    words.add("is");
    words.add("a");
    words.add("great");
    words.add("day");
%>

<table width="200px" align="center" border="1" cellspacing="0">

    <%for (String word : words) {%>

    <tr>
        <td><%=word%></td>
    </tr>

    <%}%>

</table>


<%--<%@include file="footer.jsp" %>--%><%--两个文件会合并--%>
<jsp:include page="footer.jsp" >
    <jsp:param  name="year" value="2017" />
</jsp:include>