<%@ page language="java"  pageEncoding="UTF-8"%>
<%--<%@ include file="top.jsp"%>--%>
<%--<jsp:include page="top.jsp" flush="true"/>--%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>项目平台管理系统</title>
<style>
body
{
  scrollbar-base-color:#C0D586;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:#DEEFC6;
}
</style>

</head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${rootpath}/basicPage/top.jsp" name="topFrame" scrolling="no">
  <frameset cols="180,*" name="btFrame" frameborder="0" border="0" framespacing="0">
    <frame src="${rootpath}/basicPage/menu.jsp" n noresize name="menu" scrolling="yes">
    <frame src="${rootpath}/basicPage/main.jsp" noresize name="main" scrolling="yes">
  </frameset>


<noframes>
    <body>
    您的浏览器不支持框架！
    </body>
</noframes>

</frameset>

</html>