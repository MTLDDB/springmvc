<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" isELIgnored="false"%>
uploaded success

${doc}
<div>
    <img src = "${imgShow}">
</div>
${imgShow}
<br/>
${docFileName}
<br/>
${docContentType}
<br/>
<s:debug/>