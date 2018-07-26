<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>编辑客户信息</title>
		<link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
		<script type="application/javascript" language="JavaScript" src="static/js/jquery-1.8.1.js" ></script>
		<script type="application/javascript" >

            $(function () {
               <%--$.ajax({--%>
                    <%--type:'post',--%>
                    <%--url:'customer/get_one.action',--%>
                    <%--dataType:'json',--%>
                    <%--data:{id:${param.id},name:'kk'},--%>
                    <%--success:function (resultData) {--%>
                       <%--$(resultData ).each(function (index,result )--%>
                        <%--{--%>
                            <%--// alert(typeof(result) + "-----" + result.companyperson);--%>
                            <%--$("[name='comname']").val(result.comname);--%>
                            <%--$("[name='companyperson']").val(result.companyperson);--%>
                            <%--$("[name='comaddress']").val(result.comaddress);--%>
                            <%--$("[name='comphone']").val(result.comphone);--%>
                            <%--$("[name='camera']").val(result.camera);--%>
                            <%--$("[name='present']").val(result.present);--%>
                            <%--$("[name='remark']").val(result.remark);--%>
                        <%--})--%>
                    <%--}--%>

                <%--})--%>

				$.post('customer/get_one.action',{id:${param.id}},function(result){
                    $("[name='comname']").val(result.comname);
                    $("[name='companyperson']").val(result.companyperson);
                    $("[name='comaddress']").val(result.comaddress);
                    $("[name='comphone']").val(result.comphone);
                    $("[name='camera']").val(result.camera);
                    $("[name='present']").val(result.present);
                    $("[name='remark']").val(result.remark);
                })
            })

            function save_info(){
                $("#save")[0].action="/ProjectManager/customer/update_info.action";
                $("#save")[0].submit();
            }
		</script>
	</head>
	<body leftmargin="8" topmargin="8" >
		<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
			<tr>
				 <td height="26" >
					<table width="58%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td >
								当前位置:<a href="skip.action?path=customer.jsp">客户信息管理</a>>>编辑客户信息
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<form name="form2" id="save" >
			<input type="hidden" name="id" value="${param.id}">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="24" colspan="2" >&nbsp;编辑客户信息&nbsp;</td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22" >公司名称：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="comname" value=""/></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司联系人：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="companyperson" value=""/></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司地址：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="comaddress" size="60" value=""/></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">联系电话：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="comphone" value=""/></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">座机：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><input name="camera" value=""/></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司简介：</td>
					<td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><textarea rows=15 name="present"  cols=130></textarea></td>
				</tr>

				<tr >
					<td align="right" bgcolor="#FAFAF1" >备注：</td>
					<td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" >
						<textarea rows=10 name="remark" cols=130></textarea>
					</td>
				</tr>
				<tr bgcolor="#FAFAF1">
					<td height="28" colspan=4 align=center>&nbsp;
						<a href="javascript:void(0)" class="coolbg" onclick="save_info()">保存</a>
						<a href="/ProjectManager/skip.action?path=customer.jsp" class="coolbg">返回</a>
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>