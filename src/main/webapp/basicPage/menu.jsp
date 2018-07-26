<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu</title>
<link rel="stylesheet" href="../static/skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="../static/skin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language='javascript'>
	var curopenItem = '1';
</script>
<script language="javascript" type="text/javascript"
	src="../static/skin/js/frame/menu.js"></script>
<script type="text/javascript" src="../static/js/jquery-1.8.1.js"></script>
<base target="main" />
</head>
<body target="main">
	<table  width='99%' height="100%" border='0' cellspacing='0' cellpadding='0' >
        <tr><td style='padding-left:3px;padding-top:8px' valign='top' id="menuss">

<dl class='bitem'>
<dt onclick=showHide("items1_1")><b>项目管理</b></dt>

<dd style='display:block' class='sitem' id=items1_1>
<ul class='sitemu' id=0>
<li><a href='${rootpath}/skip.action?path=project-base.jsp' target='main'>基本信息管理</a> </li>
<li><a href='${rootpath}/skip.action?path=project-need.jsp' target='main'>需求分析管理</a> </li>
<li><a href='${rootpath}/skip.action?path=project-model.jsp' target='main'>模块管理</a> </li>
<li><a href='${rootpath}/skip.action?path=project-function.jsp' target='main'>功能管理</a> </li>
<li><a href='${rootpath}/skip.action?path=project-file.jsp' target='main'>附件管理</a> </li>
</ul>
</dd>
</dl>

<dl class='bitem'><dt onclick=showHide('items2_1')><b>任务管理</b></dt><dd style='display:none' class='sitem' id=items2_1><ul class='sitemu' id=1>

<li><a href='${rootpath}/skip.action?path=task-add.jsp' target='main'>创建任务</a> </li>
<li><a href='${rootpath}/skip.action?path=task.jsp' target='main'>任务信息</a> </li>

<li><a href='${rootpath}/skip.action?path=task-my.jsp' target='main'>我的任务</a> </li>
</ul></dd></dl>

<dl class='bitem'><dt onclick=showHide("items3_1")><b>信息箱</b></dt><dd style='display:none' class='sitem' id=items3_1><ul class='sitemu' id=2>
<li><a href='${rootpath}/skip.action?path=message_send.jsp' target='main'>发信息</a> </li>
<li><a href='${rootpath}/skip.action?path=message_give.jsp' target='main'>发件箱</a> </li>
<li><a href='${rootpath}/skip.action?path=message_receive.jsp' target='main'>收件箱</a> </li>
</ul></dd></dl>

<dl class='bitem'><dt onclick=showHide("items4_1")><b>客户信息管理</b></dt><dd style='display:none' class='sitem' id=items4_1><ul class='sitemu' id=3>
<li><a href='${rootpath}/skip.action?path=customer.jsp' target='main'>客户信息</a> </li>
</ul></dd></dl>

<dl class='bitem'><dt onclick=showHide("items5_1")><b>权限管理</b></dt><dd style='display:none' class='sitem' id=items5_1><ul class='sitemu' id=4>
<li><a href='${rootpath}/skip.action?path=user.jsp' target='main'>员工管理</a> </li>
<li><a href='${rootpath}/skip.action?path=role.jsp' target='main'>角色管理</a> </li>
<li><a href='${rootpath}/skip.action?path=resources.jsp' target='main'>菜单资源管理</a> </li>
</ul></dd></dl>

<dl class='bitem'><dt onclick=showHide("items6_1")><b>我的信息</b></dt><dd style='display:none' class='sitem' id=items6_1><ul class='sitemu' id=5>
<li><a href='${rootpath}/skip.action?path=info.jsp' target='main'>信息查看</a> </li>
<li><a href='${rootpath}/skip.action?path=modpassword.jsp' target='main'>修改密码</a> </li>
</ul></dd></dl>
        
		</td>
		</tr>
	</table>
</body>
</html>