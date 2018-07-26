<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加角色</title>
<link rel="stylesheet" type="text/css" href="skin/css/base.css">
</head>
<body leftmargin="8" topmargin="8" background='skin/images/allbg.gif'>

<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
<tr>
 <td height="26" background="skin/images/newlinebg3.gif">
  <table width="58%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td >
    当前位置:权限管理>>添加角色信息
 </td>
 </tr>
</table>
</td>
</tr>
</table>

<form name="form2">

<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
<tr bgcolor="#E7E7E7">
	<td height="24" colspan="2" background="skin/images/tbg.gif">&nbsp;添加角色&nbsp;</td>
</tr>
<tr >
	<td align="right" bgcolor="#FAFAF1" height="22">角色编号：</td>
	<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input/></td>
</tr>
<tr >
	<td align="right" bgcolor="#FAFAF1" height="22">角色名称：</td>
	<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input/></td>
</tr>
<tr >
	<td align="right" bgcolor="#FAFAF1" height="22">状态：</td>
	<td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><select><option value=1>启用</option><option value=1>禁用</option></select></td>
</tr>
<tr >
	<td align="right" bgcolor="#FAFAF1" height="22">赋菜单资源：</td>
	<td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
	
	<input type="checkbox"/>项目管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>基本信息管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>需求分析管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>模块管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>功能管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>附件管理<br/>
	
	<input type="checkbox"/>任务管理<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>创建任务<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>任务信息<br/>
	&nbsp;&nbsp;&nbsp;<input type="checkbox"/>我的任务<br/>
	
	</td>
</tr>

<tr >
	<td align="right" bgcolor="#FAFAF1" >备注：</td>
	<td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" >
		<textarea rows=10 cols=130></textarea>
	</td>
</tr>


<tr bgcolor="#FAFAF1">
<td height="28" colspan=4 align=center>
	&nbsp;
	<a href="role.jsp" class="coolbg">保存</a>
	<a href="role.jsp" class="coolbg">返回</a>
</td>
</tr>
</table>

</form>
  

</body>
</html>