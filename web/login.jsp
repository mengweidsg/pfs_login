<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Login Page</title>
</head>

<body>
<p><a href="register.jsp">�û�ע��</a>|�û���¼</p>
<s:form action="loginAction" theme="simple">
<table>
    <tr>
    <td style="text-align:right">
    �˺�
    </td>
    <td>
    <s:textfield name="name" label="�˺�" />

    </td>
</tr>
    <tr>
    <td style="text-align:right">
    ����
    </td>
    <td>
    <s:password name="pwd" label="����" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    ��֤��
    </td>
    <td>
    <s:textfield name="inputCertCode" label=" �� ֤ ��
" cssStyle="width:100px"/>
    <img src="other/makeCertPic.jsp">
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    <s:submit value="��¼" />
    </td>
    <td style="text-align:left">
    <s:reset value="ȡ��"/>
    </td>
    </tr>
    </table>
    </s:form>
<s:fielderror cssStyle="color:red"/>
</body>
</html>
