<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>查看客户信息</title>
		<link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
		<script type="application/javascript" src="/ProjectManager/static/js/jquery-1.8.1.js"></script>
		<script type="application/javascript">
				$(function(){
					$.ajax({
						type:'POST',
						url:'customer/get_one.action',
						data:{id:${param.id}},
						dataType:'json',
						success:function(resultData){
							console.info(resultData);
							$("#comname").text(resultData.comname);
							$("#companyperson").text(resultData.companyperson);
							$("#comaddress").text(resultData.comaddress);
							$("#comphone").text(resultData.comphone);
							$("#camera").text(resultData.camera);
							$("#present").text(resultData.present);
							$("#remark").text(resultData.remark);

						}
					});
				});
		</script>
	</head>

	<body leftmargin="8" topmargin="8">
		<!--  快速转换位置按钮  -->
		<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
			<tr>
				 <td height="26" >
					  <table width="58%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							  <td >
								  当前位置:<a href="skip.action?path=customer.jsp"> 客户信息管理</a>>>查看客户信息
							  </td>
					  </tr>
					</table>
				</td>
			</tr>
		</table>

		<form name="form2">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="24" colspan="2">&nbsp;查看客户信息&nbsp;</td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22" >公司名称：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="comname"></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司联系人：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="companyperson"></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司地址：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="comaddress"></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">联系电话：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="comphone"></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">座机：</td>
					<td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="camera"></td>
				</tr>
				<tr >
					<td align="right" bgcolor="#FAFAF1" height="22">公司简介：</td>
					<td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" id="present"></td>
				</tr>

				<tr >
					<td align="right" bgcolor="#FAFAF1" >备注：</td>
					<td  colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';"  id="remark">
					</td>
				</tr>
				<tr bgcolor="#FAFAF1">
					<td height="28" colspan=4 align=center>
						&nbsp;
						<a href="skip.action?path=customer.jsp" class="coolbg">返回</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>