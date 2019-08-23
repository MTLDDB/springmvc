<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page isELIgnored="false"%>

${date}

<style>
    table {
        border-collapse: collapse;
    }
    td {
        border: 1px solid gray;
    }
</style>
<table align="center">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>st.index</td>
        <td>st.count</td>
        <td>st.first</td>
        <td>st.last</td>
        <td>st.odd</td>
        <td>st.even</td>
    </tr>
&lt;%&ndash;s:iterator标签进行遍历
value 表示集合
var 表示遍历出来的元素
st 表示遍历出来的元素状态
st.index 当前行号 基0
st.count 当前行号 基1
st.first 是否是第一个元素
st.last 是否是最后一个元素
st.odd 是否是奇数
st.even 是否是偶数&ndash;%&gt;
    <s:iterator value="products" var="p" status="st">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${st.index}</td>
            <td>${st.count}</td>
            <td>${st.first}</td>
            <td>${st.last}</td>
            <td>${st.odd}</td>
            <td>${st.even}</td>
        </tr>
    </s:iterator>
</table>
&lt;%&ndash;s:checkboxlist标签
value：哪些被选中
name：提交到服务端用的名称
list:用于遍历的集合
listValue:显示的checkbox的名称
listKey:checkbox的value&ndash;%&gt;
<s:checkboxlist value="selectedProducts" name="product.id"
                list="products" listValue="name" listKey="id" />
<br>
&lt;%&ndash;checkbox标签的基础上增加s:radio标签
value表示：哪项被选中
name表示：提交到服务端用的名称
list:用于遍历的集合
listValue:显示的radio的名称
listKey:radio的value&ndash;%&gt;
<s:radio name="product.id" value="1" list="products" listValue="name"
         listKey="id" />
<br>

&lt;%&ndash;s:select标签
name表示：提交到服务端用的名称
list:用于遍历的集合
listKey:每个option的value
listValue:显示的名称
multiple:true表示可以选中多行
size="1"表示默认显示3行
value表示：哪些被选中&ndash;%&gt;
<s:select label="products"
          name="product.id"
          list="products"
          listKey="id"
          listValue="name"
          multiple="true"
          size="2"
          value="selectedProducts"
/>

<br>
<table border="1" cellspacing="0">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>products</td>
    </tr>
    <s:iterator value="categories" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>
                <s:iterator value="#c.products" var="p">
                    ${p.name}<br/>
                </s:iterator>
            </td>
        </tr>
    </s:iterator>
</table>
<s:debug/>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<body>
<table align="center" border="1" cellspacing="0" width="500px">

    <tr>
        <td>id</td>
        <td>name</td>
        <td>price</td>
        <td>edit</td>
        <td>delete</td>
    </tr>

    <s:iterator value="products" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td><a href="editProduct?product.id=${p.id}">edit</a></td>
            <td><a href="deleteProduct?product.id=${p.id}">delete</a></td>
        </tr>
    </s:iterator>
</table>

<br/>

<form action="addProduct" method="post">
    <table align="center" border="1" cellspacing="0">
        <tr>
            <td>
                name:
            </td>
            <td>
                <input type="text" name="product.name" value="">
            </td>
        </tr>
        <tr>
            <td>
                price:
            </td>
            <td>
                <input type="text" name="product.price" value="0">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="submit">
            </td>
        </tr>
    </table>

</form>

</body>
</html>