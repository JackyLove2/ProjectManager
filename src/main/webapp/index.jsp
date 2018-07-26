<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>index</title>
    <script type="text/javascript" language="JavaScript" src="static/js/jquery-1.8.1.js"></script>
</head>


<script type="text/javascript" language="JavaScript">
    $(function () {
        /*alert('hjhh')
        alert("tt"=='tt')
        if (confirm("您确定要关闭本页吗？")){window.opener=null;window.open('','_self');window.close();}else{}*/
    })
</script>

    <body>

      <%
        request.getRequestDispatcher("WEB-INF/jsp/login.jsp").forward(request,response);
      %>

    </body>
</html>

