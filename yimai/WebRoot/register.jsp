<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>������ע��</title>
    
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>

  </head>
  
  <body>
    <div id="header" class="wrap">
	<div id="logo"><a href="index.jsp"><img src="images/logo.gif" /></a></div>
	<div class="help"><a href="#" class="shopping">���ﳵ</a><a href="login.jsp">��¼</a><a href="register.jsp">ע��</a><a href="guestbook.jsp">����</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="#">��ҳ</a></li>
			<li><a href="#">ͼ��</a></li>
			<li><a href="#">�ٻ�</a></li>
			<li><a href="#">Ʒ��</a></li>
			<li><a href="#">����</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="#">����</a></li>
			<li><a href="#">Ӱ��</a></li>
			<li><a href="#">�ٶ�</a></li>
			<li><a href="#">����</a></li>
			<li><a href="#">С˵</a></li>
			<li><a href="#">����</a></li>
			<li><a href="#">�������</a></li>
			<li><a href="#">�ʼǱ�</a></li>
			<li><a href="#">���޷�</a></li>
			<li><a href="#">�ﶬѥ</a></li>
			<li><a href="#">�˶�Ь</a></li>
			<li><a href="#">���ݻ���</a></li>
			<li><a href="#">�ҷ���Ʒ</a></li>
			<li><a href="#">Ӥ���̷�</a></li>
			<li><a href="#">��Ʒ</a></li>
			<li class="last"><a href="#">Investor Relations</a></li>
		</ul>
	</div>
</div>
<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>��ӭע��������</h1>
			<ul class="steps clearfix">
				<li class="current"><em></em>��дע����Ϣ</li>
				<li class="last"><em></em>ע��ɹ�</li>
			</ul>
			<form id="regForm" method="post" action="RegisterServlet" onsubmit="return checkForm(this);">
				<table>
					<tr>
						<td class="field">�û�����</td>
						<td><input class="text" type="text" name="userName" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">��¼���룺</td>
						<td><input class="text" type="password" id="passWord" name="passWord" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">ȷ�����룺</td>
						<td><input class="text" type="password" name="rePassWord" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">��֤�룺</td>
						<td><input class="text verycode" type="text" name="veryCode" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><img id="veryCode" src="" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" name="submit" value="�ύע��" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 �������� All Rights Reserved. ��ICP֤1000001��
</div>
  </body>
</html>
