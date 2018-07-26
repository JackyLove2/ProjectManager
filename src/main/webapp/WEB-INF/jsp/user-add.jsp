<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>添加用户</title>
    <link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
    <script type="application/javascript" language="JavaScript" src="/ProjectManager/static/js/jquery-1.8.1.js"></script>
    <script type="application/javascript" language="JavaScript">
        $(function () {
            $.get("/ProjectManager/position/get_all.action",function (data,status) {
                if (status =="success" ){
                    $(data).each(function (index,item) {
                        var option = "<option name='pFK'  value='"+item.id+"'>"+item.name+"</option>";
                        $("#position").append(option);
                    })
                }else{
                    alert("load failed...");
                }
            })
        })
        
        function submit() {
            $("#info")[0].action="/ProjectManager/employee/add_one.action"
            alert("action"+$("#info")[0].action)
            $("#info")[0].submit()
        }

        // function on() {
        //     alert($("#position :selected").val()+"----"+$("#position :selected").attr("name"));
        // }
    </script>
</head>
<body leftmargin="8" topmargin="8">

<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
    <tr>
        <td height="26">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        当前位置:权限管理>>添加员工信息
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%--<input type="button" value="jjjjj" onclick="on()"/>--%>
<form  id="info" action="">
    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center"
           style="margin-top:8px">
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">职位：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <select id="position" >
                </select></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">姓名：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="text" name="ename"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">性别：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><select id="sex" >
                <option name="esex" value='男' >男</option>
                <option name="esex" value='女'>女</option>
            </select></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">年龄：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="number" name="eage"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">联系电话：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="text" name="telephone" /></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">入职时间：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="hiredate" type="date"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">身份证号码：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="text" name="pnum"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">用户名：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="username"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">密码：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">赋角色：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="checkbox"/>管理员<input
                    name="" type="checkbox"/>项目经理<input type="checkbox" checked/>程序员
            </td>
        </tr>

        <tr>
            <td align="right" bgcolor="#FAFAF1">备注：</td>
            <td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';">
                <textarea  name="remark" rows=10 cols=130></textarea>
            </td>
        </tr>

        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;
                <a href="javascript:void(0)" onclick="submit()" class="coolbg">保存</a>
                <a href="/ProjectManager/skip.action?path=user.jsp" class="coolbg">返回</a>
            </td>
        </tr>
    </table>

</form>


</body>
</html>