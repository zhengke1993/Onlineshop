<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page language="java"%> 
<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>��������ӷ���</title>
    
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>

  </head>
  
  <body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="../index.html">����ǰ̨ҳ��</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.html">��ҳ</a></li>
			<li><a href="user.html">�û�</a></li>
			<li class="current"><a href="product.html">��Ʒ</a></li>
			<li><a href="order.html">����</a></li>
			<li><a href="guestbook.html">����</a></li>
			<li><a href="news.html">����</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		����Աpillys���ã�������<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //��ȡϵͳʱ�� 
out.print(datetime);
%>����ӭ�ص������̨��
	</div>
</div>
<div id="position" class="wrap">
	�����ڵ�λ�ã�<a href="index.html">������</a> &gt; �����̨
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>�û�����</dt>
				<dd><em><a href="user-add.html">����</a></em><a href="user.html">�û�����</a></dd>
				<dt>��Ʒ��Ϣ</dt>
				<dd><em><a href="productClass-add.html">����</a></em><a href="productClass.html">�������</a></dd>
				<dd><em><a href="product-add.html">����</a></em><a href="product.html">��Ʒ����</a></dd>
				<dt>��������</dt>
				<dd><a href="order.html">��������</a></dd>
				<dt>���Թ���</dt>
				<dd><a href="guestbook.html">���Թ���</a></dd>
				<dt>���Ź���</dt>
				<dd><em><a href="news-add.html">����</a></em><a href="news.html">���Ź���</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>��ӷ���</h2>
		<div class="manage">
			<form action="manage-result.html">
				<table class="form">
					<tr>
						<td class="field">�����ࣺ</td>
						<td>
							<select name="parentId">
								<option value="0" selected="selected">����Ŀ</option>
								<option value="1">����</option>
								<option value="2">�·�</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">�������ƣ�</td>
						<td><input type="text" class="text" name="className" value="����" /></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="����" /></label></td>
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
