<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--获取项目名称并设置成全局变量--%>
<c:set var="rootpath" value="${pageContext.request.getContextPath()}" scope="session"/>
<HEAD>
    <TITLE>欢迎登陆项目平台管理系统</TITLE>
    <META http-equiv=Content-Language content=zh-cn>
    <META http-equiv=Content-Type content="text/html; charset=gb2312">
    <META content="MSHTML 6.00.2800.1611" name=GENERATOR>
    <LINK href="/ProjectManager/static/images/css1.css" type=text/css rel=stylesheet>
    <LINK href="static/images/newhead.css" type=text/css rel=stylesheet>
    <script language="JavaScript" type="text/javascript" src="${rootpath}/static/js/jquery-1.8.1.js"></script>

    <style>
        a{text-decoration: none}

    </style>
</HEAD>

<BODY bgColor=#eef8e0 leftMargin=0 topMargin=0 MARGINWIDTH="0"
      MARGINHEIGHT="0">
<!--8888 -->
<script type="text/javascript">
    function loginOrNot(choice) {
       if (choice=='yes'){
           $("#form")[0].action="skip.action";
           $("#form")[0].submit();
       }
       if (choice=='no') {
               window.opener=null;
               window.open('','_self');window.close();
       }
    }
</script>
<DIV>
    <form id="form" method="post">
        <input type="hidden" name="path" value="index.jsp"/>
    </form>
    <TABLE cellSpacing=0 cellPadding=0 width=1004 border=0 align="center">
        <TBODY>
        <TR>
            <TD colSpan=6><IMG height=92 alt="" src="${rootpath}/static/images/crm_1.gif"
                               width=345></TD>
            <TD colSpan=4><IMG height=92 alt="" src="${rootpath}/static/images/crm_2.gif"
                               width=452></TD>
            <TD><IMG height=92 alt="" src="${rootpath}/static/images/crm_3.gif" width=207></TD>
        </TR>
        <TR>
            <TD colSpan=6><IMG height=98 alt="" src="${rootpath}/static/images/crm_4.gif"
                               width=345></TD>
            <TD colSpan=4><IMG height=98 alt="" src="${rootpath}/static/images/crm_5.gif"
                               width=452></TD>
            <TD><IMG height=98 alt="" src="${rootpath}/static/images/crm_6.gif" width=207></TD>
        </TR>
        <TR>
            <TD rowSpan=5><IMG height=370 alt="" src="${rootpath}/static/images/crm_7.gif"
                               width=59></TD>
            <TD colSpan=5><IMG height=80 alt="" src="${rootpath}/static/images/crm_8.gif"
                               width=286></TD>
            <TD colSpan=4><IMG height=80 alt="" src="${rootpath}/static/images/crm_9.gif"
                               width=452></TD>
            <TD><IMG height=80 alt="" src="${rootpath}/static/images/crm_10.gif" width=207></TD>
        </TR>
        <TR>
            <TD><IMG height=110 alt="" src="${rootpath}/static/images/crm_11.gif" width=127></TD>
            <TD background=${rootpath}/static/images/crm_12.gif colSpan=6>
                <TABLE id=table1 cellSpacing=0 cellPadding=0 width="98%" border=0>
                    <TBODY>
                    <TR>
                        <TD>
                            <TABLE id=table2 cellSpacing=1 cellPadding=0 width="100%"
                                   border=0>
                                <TBODY>
                                <TR>
                                    <TD align=middle width=81><FONT color=#ffffff>用户名：</FONT></TD>
                                    <TD><INPUT class=regtxt title=请填写用户名 maxLength=16
                                               size=16 value="username" id="username"></TD>
                                </TR>
                                <TR>
                                    <TD align=middle width=81><FONT color=#ffffff>密&nbsp;
                                        码：</FONT></TD>
                                    <TD><INPUT class=regtxt title=请填写密码 type=password
                                               maxLength=16 size=16 value=password id=pass></TD>
                                </TR>
                                <TR>
                                    <TD align=middle width=81><FONT color=#ffffff>角色：&nbsp;&nbsp;</FONT></TD>
                                    <TD><select name="role" class=regtxt maxLength=50 size=16 >

                                            <option value="1">管理员</option>
                                            <option value="2">普通用户</option>
                                        </select>
                                        <INPUT type=hidden value=check name=login>
                                    </TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD colSpan=2 rowSpan=2><IMG height=158 alt=""
                                         src="${rootpath}/static/images/crm_13.gif" width=295></TD>
            <TD rowSpan=2><IMG height=158 alt="" src="${rootpath}/static/images/crm_14.gif"
                               width=207></TD>
        </TR>
        <TR>
            <TD rowSpan=3><IMG height=180 alt="" src="${rootpath}/static/images/crm_15.gif"
                               width=127></TD>
            <TD rowSpan=3><IMG height=180 alt="" src="${rootpath}/static/images/crm_16.gif"
                               width=24></TD>
            <TD><image title=登录项目平台管理系统  height=48 alt=""
                       width=86 src="${rootpath}/static/images/crm_17.gif"  onclick="loginOrNot('yes')"/></TD>
            <TD><IMG height=48 alt="" src="${rootpath}/static/images/crm_18.gif" width=21></TD>
            <TD colSpan=2><IMG title=关闭页面 height=48 alt="" onclick="loginOrNot('no')"
                                  src="${rootpath}/static/images/crm_19.gif" width=84 border=0></TD>
            <TD><IMG height=48 alt="" src="${rootpath}/static/images/crm_20.gif" width=101></TD>
        </TR>
        <TR>
            <TD colSpan=5 rowSpan=2><IMG height=132 alt=""
                                         src="${rootpath}/static/images/crm_21.gif" width=292></TD>
            <TD rowSpan=2><IMG height=132 alt="" src="${rootpath}/static/images/crm_22.gif"
                               width=170></TD>
            <TD colSpan=2><IMG height=75 alt="" src="${rootpath}/static/images/crm_23.gif"
                               width=332></TD>
        </TR>
        <TR>
            <TD colSpan=2><IMG height=57 alt="" src="${rootpath}/static/images/crm_24.gif"
                               width=332></TD>
        </TR>
        <TR>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=59></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=127></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=24></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=86></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=21></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=28></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=56></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=101></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=170></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=125></TD>
            <TD><IMG height=1 alt="" src="${rootpath}/static/images/spacer.gif" width=207></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>
</BODY>
</HTML>