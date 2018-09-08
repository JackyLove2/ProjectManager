<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>编辑员工信息</title>
    <link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
    <script type="application/javascript" language="JavaScript" src="/ProjectManager/static/js/jquery-1.8.1.js" ></script>
    <script type="application/javascript" language="JavaScript">
        $().ready(function () {
            $.ajax({
                type:"get",
                url:"/ProjectManager/position/getPosition.action",
                async:true,
                dataType:"Json",
                success:function (resultData) {
                    // alert(resultData+"----"+typeof(resultData))
                    $(resultData).each(function (index,item) {
                        // console.info(item+typeof(item))
                        var option = "<option value='"+item.id+"' label='"+item.name+"'/>"
                        $("#pFk ").append(option)
                    })
                },
                error:function () {
                    alert("load failed....")
                }
            })
            <%--alert(${param.eid})--%>
            $.post("/ProjectManager/employee/getEmployee.action",{eid:${param.eid}},function (result,status) {
                // result是一个dom对象数组，因为controller返回的是list集合，可以使用$(result).each(function(index,item){})
                var data = result[0]
                $("option").each(function (index,item) {
                    if ($(item).val()==data.pFk){
                        item.selected = true
                    }else if (item.value==data.esex){
                        item.selected = true
                    }
                })
                $("[name='ename']").val(data.ename)
                $("[name='eage']").val(data.eage)

                
                $("[name='telephone']").val(data.telephone)
                $("[name='hiredate']").val(data.hiredate)
                $("[name='pnum']").val(data.pnum)
                $("[name='username']").val(data.username)
                $("[name='password']").val(data.password)
                $("[name='remark']").val(data.remark)
            })
        })
    </script>
</head>
<body leftmargin="8" topmargin="8">

<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
    <tr>
        <td height="26">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        当前位置:权限管理>>编辑员工
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<form name="form2">
    <input name="eid" value="${eid}" type="hidden">
    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center"
           style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2">&nbsp;编辑员工&nbsp;</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">职位：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
            <select id="pFk" name="pFk">
            </select></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">姓名：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="ename"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">性别：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><select name="esex">
                <option value="男">男</option>
                <option value="女">女</option>
            </select></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">年龄：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="eage"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">联系电话：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="telephone"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">入职时间：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="hiredate"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">身份证号码：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="pnum"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">用户名：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="username"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">密码：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="password" type="password"/></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FAFAF1" height="22">赋角色：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input type="checkbox"/>管理员<input
                    type="checkbox"/>项目经理<input type="checkbox" checked/>程序员
            </td>
        </tr>

        <tr>
            <td align="right" bgcolor="#FAFAF1">备注：</td>
            <td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';">
                <textarea rows=10 cols=130 name="remark"></textarea>
            </td>
        </tr>


        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;
                <a href="#" class="coolbg">保存</a>
                <a href="/ProjectManager/skip.action?path=user.jsp" class="coolbg">返回</a>
            </td>
        </tr>
    </table>

</form>


</body>
</html>