<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Register Page</title>
    </head>

<body>
<p><a href="login.jsp">�û���¼</a>|�û�ע��</p>
<s:form action="registerAction" theme="simple">
 <table>
    <tr>
    <td style="text-align:right">
    �������˺�
    </td>
    <td>
    <s:textfield name="user.name" label="�˺�" />

    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    ����������
    </td>
    <td>
    <s:password name="user.pwd" label="����" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    ���ٴ���������
    </td>
    <td>
    <s:password name="repwd" label="�ظ�����" />
    </td>
    </tr>
    <tr>
    <td style="text-align:right">
    ��������֤��
    </td>
    <td>
    <s:textfield name="inputCertCode" label=" �� ֤ ��
" cssStyle="width:100px"/>
    <img src="other/makeCertPic.jsp">
    </td>
    </tr>
    <tr>
        <td style="text-align:right">
        <s:submit value="ע��" />
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
