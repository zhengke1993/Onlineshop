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
    <title>��������Ʒ����-��̨����</title>
    
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
	�����ڵ�λ�ã�<a href="index.">��jsp����</a> &gt; �����̨
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
		<h2>��Ʒ����</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>��Ʒ����</th>
					<th>����</th>
				</tr>
				<%
							List<Product> list = new ArrayList<Product>();
							ProductDao dao = new ProductDaoImpl();
							list = dao.getAll();
							for (int i = 0; i < list.size(); i++) {
								Product pro = list.get(i);
						%>
				<tr>
					<td class="first w4 c"><%=pro.getEp_id()%></td>
					<td class="thumb"><img width="40" src="../images/product/<%=pro.getEp_file_name()%>" /><a href="../product-view.jsp?id=<%=pro.getEp_id()%>" target="_blank"><%=pro.getEp_name()%></a></td>
					<td class="w1 c"><a href="product-modify.jsp?id=<%=pro.getEp_id()%>">�޸�</a> <a href="../ProductDeleteServlet?id=<%=pro.getEp_id() %>">ɾ��</a></td>
				</tr>
				<%
							}
						%>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 �������� All Rights Reserved. ��ICP֤1000001��
</div>
  </body>
</html>
