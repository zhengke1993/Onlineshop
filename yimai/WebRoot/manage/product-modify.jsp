<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.yimai.entity.Product"%>
<%@page import="com.yimai.Dao.ProductDao"%>
<%@page import="com.yimai.Dao.impl.ProductDaoImpl"%>
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
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>�������޸���Ʒ</title>
    
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>

  </head>
  
  <body>
<div id="header" class="wrap">
	<div id="logo"><a href="index.jsp"><img src="../images/logo.gif" /></a></div>
	<div class="help"><a href="../index.jsp">����ǰ̨ҳ��</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">��ҳ</a></li>
			<li><a href="user.jsp">�û�</a></li>
			<li class="current"><a href="product.jsp">��Ʒ</a></li>
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
		<h2>�޸���Ʒ</h2>
		<div class="manage">
		<%
						int id = Integer.parseInt(request.getParameter("id"));
						ProductDao dao = new ProductDaoImpl();
						Product pro = dao.getById(id);
					%>
			<form action="../ProductModifyServlet" method="post">
				<table class="form">
					<tr>
						<td class="field">��Ʒ���ƣ�</td>
						<td><input type="text" class="text" name="productName" value="<%=pro.getEp_name()%>" /></td>
					</tr>
					<tr>
						<td class="field">�������ࣺ</td>
						<td>
							<select name="parentId">
								<option value="1">ʳƷ</option>
								<option value="3">�Ҿ�</option>
								<option value="3">��ױ</option>
								<option value="4">�ֻ�����</option>
								<option value="5">��װ</option>
								<option value="6">�ֱ���Ʒ</option>
								<option value="7">Ь��</option>
								<option value="8">ĸӤ</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">��ƷͼƬ��</td>
						<td><input type="file" class="text" name="photo" /></td>
					</tr>
					<tr>
						<td class="field">��Ʒ�۸�</td>
						<td><input type="text" class="text tiny" name="productPrice" /> Ԫ</td>
					</tr>
					<tr>
						<td class="field">Ʒ�ƣ�</td>
						<td><input type="text" class="text" name="productName" /></td>
					</tr>
					<tr>
						<td class="field">��棺</td>
						<td><input type="text" class="text tiny" name="productName" /></td>
					</tr>
					<tr>
						<td class="field">����ţ�</td>
						<td><input type="text" class="text" name="productName" /></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="���" /></label></td>
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
