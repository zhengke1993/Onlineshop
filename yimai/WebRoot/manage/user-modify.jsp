<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.yimai.entity.User"%>
<%@ page import="com.yimai.Dao.UserDao"%>
<%@ page import="com.yimai.Dao.impl.UserDaoImpl"%>
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

    
    <title>�������޸��û�</title>
    
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>

  </head>
  
  <body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="../index.jsp">����ǰ̨ҳ��</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">��ҳ</a></li>
			<li class="current"><a href="user.jsp">�û�</a></li>
			<li><a href="product.jsp">��Ʒ</a></li>
			<li><a href="order.jsp">����</a></li>
			<li><a href="guestbook.jsp">����</a></li>
			<li><a href="news.jsp">����</a></li>
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
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; �����̨
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>�û�����</dt>
				<dd><em><a href="user-add.jsp">����</a></em><a href="user.jsp">�û�����</a></dd>
				<dt>��Ʒ��Ϣ</dt>
				<dd><em><a href="productClass-add.jsp">����</a></em><a href="productClass.jsp">�������</a></dd>
				<dd><em><a href="product-add.jsp">����</a></em><a href="product.jsp">��Ʒ����</a></dd>
				<dt>��������</dt>
				<dd><a href="order.jsp">��������</a></dd>
				<dt>���Թ���</dt>
				<dd><a href="guestbook.jsp">���Թ���</a></dd>
				<dt>���Ź���</dt>
				<dd><em><a href="news-add.jsp">����</a></em><a href="news.jsp">���Ź���</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>�޸��û�</h2>
		<div class="manage">
		<%
						String userid = request.getParameter("id");
						UserDao dao = new UserDaoImpl();
						User user = new User();
						user = dao.getById(userid);
					%>
			<form action="../UserModifyServlet" method="post">
				<table class="form">
					<tr>
						<td class="field">�û�����</td>
						<td><input type="text" class="text" name="userName" value="<%=user.getEu_user_id()%>" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">������</td>
						<td><input type="text" class="text" name="name" value="<%=user.getEu_user_name()%>" /></td>
					</tr>
					<tr>
						<td class="field">���룺</td>
						<td><input type="text" class="text" name="passWord" value="<%=user.getEu_password()%>" /></td>
					</tr>
					<tr>
						<td class="field">�Ա�</td>
						<td><input type="radio" name="sex" value="1" checked="checked" />�� <input type="radio" name="sex" value="2" />Ů</td>
					</tr>
					<tr>
						<td class="field">�������ڣ�</td>
						<td>
							<select name="birthyear">
								<option value="2000">2000</option>
								<option value="1999" selected="selected">1999</option>
							</select>��
							<select name="birthmonth">
								<option value="12">12</option>
								<option value="11" selected="selected">11</option>
							</select>��
							<select name="birthday">
								<option value="2">2</option>
								<option value="1" selected="selected">1</option>
							</select>��
						</td>
					</tr>
					<tr>
						<td class="field">�ֻ����룺</td>
						<td><input type="text" class="text" name="mobile" value="<%=user.getEu_mobile()%>" /></td>
					</tr>
					<tr>
						<td class="field">�ͻ���ַ��</td>
						<td><input type="text" class="text" name="address" value="<%=user.getEu_address()%>" /></td>
					</tr>
					<tr>
						<td class="field">ͷ��</td>
						<td><input type="file" class="text" name="photo" /></td>
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
