<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>发信息</title>
    <script type="text/javascript" src="/ProjectManager/static/js/jquery-1.8.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                // url:"getAllPersonNameAndPos.action",
                dataType: "json",
                type: "post",
                success: function (data) {

                },
                error: function () {
                }
            });
        });
    </script>
    <link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
</head>
<body leftmargin="8" topmargin="8">

<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
    <tr>
        <td height="26">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        当前位置:信息箱>>发信息
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<form name="form2">

    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center"
           style="margin-top:8px">
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">收件人：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name=""  /></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">标题：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE'"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="title" type="text" value=""/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">内容：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE'"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><textarea name="" id="" rows=15 cols=130></textarea></td>
        </tr>

        <tr>
            <td align="right" bgcolor="#FAFAF1">附件：</td>
            <td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';">
                <input type="file" name="attachment" title="" src=""/>
            </td>
        </tr>

        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;
                <a href="#" class="coolbg">发送</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/ProjectManager/basicPage/main.jsp" class="coolbg">取消</a>
            </td>
        </tr>
    </table>

</form>
</body>
</html>