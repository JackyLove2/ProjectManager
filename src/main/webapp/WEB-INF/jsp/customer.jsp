<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <%--<%
        String basePath=request.getScheme()+"://"+request.getServerName()+
                ":"+request.getServerPort()+request.getContextPath()+"/";
    %>
    <base href="${basePath}"  />
    <base target="_blank" />--%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>客户信息管理</title>

        <link rel="stylesheet" type="text/css" href="/ProjectManager/static/skin/css/base.css">
        <script type="text/javascript" src="/ProjectManager/static/js/jquery-1.8.1.js"></script>
        <script type="text/javascript">
            $(function(){
                $.ajax({
                    type:'POST',
                    url:'/ProjectManager/customer/getAllInfo.action',
                    dataType:'json',
                    success:function(resultData){
                        $(resultData).each(function(index,item){
                            var date=new Date();
                            date.setTime(item.addtime);
                            var tr =" <tr align='center' bgcolor=\"#FFFFFF\" onMouseMove=\"javascript:this.bgColor='#FCFDEE';\" onMouseOut=\"javascript:this.bgColor='#FFFFFF';\" height=\"22\" >\n" +
                                "\t<td><input name=\"id\" type=\"checkbox\" value='"+item.id+"'class=\"np\"></td>\n" +
                                "\t<td>"+(index+1)+"</td>\n" +
                                "\t<td>"+item.companyperson+"</td>\n" +
                                "\t<td align=\"center\">"+item.comname+"</td>\n" +
                                "\t<td>"+date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日"+"</td>\n" +
                                "\t<td>"+item.comphone+"</td>\n" +
                                "\t<td><a href=/ProjectManager/skip.action?path=customer-edit.jsp?id="+item.id+">编辑</a> | <a href=/ProjectManager/skip.action?path=customer-look.jsp?id="+item.id+">查看详情</a></td>\n" +
                                "</tr>";
                            $("#tb #tr2").before(tr);
                        })
                    }
                });

                if(window.location.pathname=="/ProjectManager/customer/customer_save.action") {
                        alert("保存成功！")
                    }
                if(window.location.pathname=="/ProjectManager/customer/update_info.action") {
                    alert("更新成功！")
                }
            });

            function select_all() {
                $("#info :input").each(function(index,cbox){
                    cbox.checked=true;
                })
            }
            
            function check_against() {
                $("#info :input").each(function(index,cbox){
                    if (cbox.checked==true) {
                        cbox.checked=false;
                    }else{
                        cbox.checked=true;
                    }
                })
            }

            function   delete_info() {
                var ids=[];
                var i=0;
                var flag=0;
                $("#info :input").each(function(index,cbox){
                    if (cbox.checked==true){
                        flag = ids.unshift($(cbox).val());
                    }
                })
                if (flag == 0){
                    alert("you has to select one record before you delete...")
                }else{
                    $.post('customer/delete_cus.action',{ids:ids.toString()},function (data,status) {
                        if (status == "success") {
                            alert("delete successfully");
                            location.reload();
                        }else{
                            alert("Failed...");
                        }
                    });
                }
                return true;
            }
            
            function  exportExcel() {
                var ids = "";
                $("#info :input").each(function (index,item) {
                    if (item.checked==true){
                        ids+=$(item).val();
                        if (index<$("#info :input").length-1){
                            ids+=",";
                        }
                    }
                })
                if (ids.length > 0){
                    $.post("/ProjectManager/toExcel.action",{ids:ids},function (data,status) {
                        if (status == "success"){
                            alert("Export successfully...");
                            location.assign(location);
                        }else{
                            alert("Export Failed....")
                        }
                    })
                } else{
                    alert("please choice item to export...")
                }
                
            }

            
            function beginSearch() {
                var condition = $("#search option:selected").val();
                var orderby = $("#orderby option:selected").val();
                var keyword = $("#form3 [id='keyword']").val();
                $.post("/ProjectManager/customer/search.action",{condition:condition,orderby:orderby, keyword:keyword},function (data,status) {
                    if (status =="success"){
                        var len = $("#tb tr").size() - 2;
                        $("#tb tr").each(function (index,item) {
                            if (index>0 && index < len) {
                                $(item).remove();
                            }
                        })
                        $(data).each(function(index,item) {
                            var date = new Date();
                            date.setTime(item.addtime);
                            var tr = " <tr align='center' bgcolor=\"#FFFFFF\" onMouseMove=\"javascript:this.bgColor='#FCFDEE';\" onMouseOut=\"javascript:this.bgColor='#FFFFFF';\" height=\"22\" >\n" +
                                "\t<td><input name=\"id\" type=\"checkbox\" value='" + item.id + "'class=\"np\"></td>\n" +
                                "\t<td>" + (index + 1) + "</td>\n" +
                                "\t<td>" + item.companyperson + "</td>\n" +
                                "\t<td align=\"center\">" + item.comname + "</td>\n" +
                                "\t<td>" + date.getFullYear() + "年" + (date.getMonth()+1) + "月" + date.getDate() + "日" + "</td>\n" +
                                "\t<td>" + item.comphone + "</td>\n" +
                                "\t<td><a href=/ProjectManager/skip.action?path=customer-edit.jsp?id=" + item.id + ">编辑</a> | <a href=/ProjectManager/skip.action?path=customer-look.jsp?id=" + item.id + ">查看详情</a></td>\n" +
                                "</tr>";
                            $("#tb #tr2").before(tr);
                        })
                    } else{
                        alert(status);
                    }
                })

            }


        </script>
    </head>
    <body leftmargin="8" topmargin="8" background='/ProjectManager/static/skin/images/frame/wbg.gif'>
        <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
            <tr>
                <td height="26" background="/ProjectManager/static/skin/images/frame/wbg.gif">
                    <table width="58%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td >
                                当前位置:<a href="/ProjectManager/skip.action?path=customer.jsp">客户信息管理</a>>>客户信息
                            </td>
                            <td>
                                <input type='button' class="coolbg np" onClick="location='/ProjectManager/skip.action?path=customer-add.jsp';" value='添加客户信息' />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <!--  搜索表单  -->
        <form id='form3' action='' method='get'>
            <input type='hidden' name='dopost' value='' />
            <table width='98%'  border='0' cellpadding='1' cellspacing='1' bgcolor='#CBD8AC' align="center" style="margin-top:8px">
                <tr bgcolor='#EEF4EA'>
                    <td background='/ProjectManager/static/skin/images/frame/wbg.gif' align='center'>
                        <table border='0' cellpadding='0' cellspacing='0'>
                            <tr>
                                <td width='90' align='center'><h3>搜索条件:</h3></td>
                                <td width='160'>
                                    <select id='search'  size="1" style='width:150px'>
                                        <option >请选择类型</option>
                                        <option name='addtime' label="添加时间" value="addtime"></option>
                                        <option name='comname' label="公司名称" value="comname"></option>
                                        <option name='comaddress' label="公司地址" value="comaddress"></option>
                                        <option name="companyperson" label="公司负责人" value="companyperson"></option>
                                    </select>
                                </td>
                                <td width='70'>
                                    关键字：
                                </td>
                                <td width='160'>
                                    <input type='text' id='keyword' style='width:120px' />
                                </td>
                                <td width='110'>
                                    <select id="orderby"  style='width:120px'>
                                        <option value='id'>排序方式</option>
                                        <option name='addtime' label="添加时间" value="addtime"></option>
                                        <option name='comname' label="公司名称" value="comname"></option>
                                        <option name='comaddress' label="公司地址" value="comaddress"></option>
                                        <option name="companyperson" label="公司负责人" value="companyperson"></option>
                                    </select>
                                </td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <td>
                                    <h2><input onclick="beginSearch()"  type="button" value="搜索" width="25" height="20" border="1" class="np" /></h2>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <!--  内容列表   -->
        <form name="form2" id="info" >
            <table id="tb" width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr id="head" align="center" bgcolor="#FAFAF1" height="22">
                    <td width="4%">选择</td>
                    <td width="6%">序号</td>
                    <td width="10%">联系人</td>
                    <td width="10%">公司名称</td>
                    <td width="8%">添加时间</td>
                    <td width="8%">联系电话</td>
                    <td width="10%">操作</td>
                </tr>
                <tr id="tr2" bgcolor="#FAFAF1">
                    <td height="28" colspan="12">
                        &nbsp;
                        <a href="javascript:void(0)" onclick="select_all()" class="coolbg">全选</a>
                        <a href="javascript:void(0)" onclick="check_against()" class="coolbg">反选</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="javascript:void(0)" class="coolbg" onclick="delete_info()">&nbsp;删除&nbsp;</a>
                        <a href="javascript:void(0)" onclick="exportExcel()" class="coolbg">&nbsp;导出Excel&nbsp;</a>
                    </td>
                </tr>
                <tr align="right" bgcolor="#EEF4EA">
                    <td height="36" colspan="12" align="center"><!--翻页代码 --></td>
                </tr>
            </table>
        </form>
    </body>
</html>