<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2019/8/16
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>--%>
<%--<form action="addProduct" method="post">--%>

    <%--产品id ：<input type="text" name="id" value=""><br />--%>
    <%--产品名称 ：<input type="text" name="product.name" value=""><br />--%>
    <%--产品价格： <input type="text" name="price" value=""><br />--%>

    <%--<input type="submit" value="增加商品">--%>
<%--</form>--%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<s:head/>
<html>

<body>

<s:form action="addProduct">
    <s:textfield name="product.name" label="product name" value="%{#parameters.name}" />
    <s:textfield name="product.id" label="product id"/>
    <s:submit value="Submit" />
</s:form>

</body>
</html>