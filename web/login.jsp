<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Login Page</title>
</head>

<body>
<p><a href="register.jsp">用户注册</a>|用户登录</p>
<s:form action="loginAction" theme="simple">
<table>
    <tr>
    <td style="text-align:right">
    账号
    </td>
    <td>
    <s:textfield name="name" label="账号" />

    </td>
</tr>
    <tr>
    <td style="text-align:right">
    密码
    </td>
    <td>
    <s:password name="pwd" label="密码" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    验证码
    </td>
    <td>
    <s:textfield name="inputCertCode" label=" 验 证 码
" cssStyle="width:100px"/>
    <img src="other/makeCertPic.jsp">
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    <s:submit value="登录" />
    </td>
    <td style="text-align:left">
    <s:reset value="取消"/>
    </td>
    </tr>
    </table>
    </s:form>
<s:fielderror cssStyle="color:red"/>
</body>
</html>
