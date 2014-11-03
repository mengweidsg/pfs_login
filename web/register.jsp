<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Register Page</title>
    </head>

<body>
<p><a href="login.jsp">用户登录</a>|用户注册</p>
<s:form action="registerAction" theme="simple">
 <table>
    <tr>
    <td style="text-align:right">
    请输入账号
    </td>
    <td>
    <s:textfield name="user.name" label="账号" />

    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    请输入密码
    </td>
    <td>
    <s:password name="user.pwd" label="密码" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    请再次输入密码
    </td>
    <td>
    <s:password name="repwd" label="重复密码" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    请输入验证码
    </td>
    <td>
    <s:textfield name="inputCertCode" label=" 验 证 码
" cssStyle="width:100px"/>
    <img src="other/makeCertPic.jsp">
    </td>
    </tr>
    <tr>
        <td style="text-align:right">
        <s:submit value="注册" />
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
