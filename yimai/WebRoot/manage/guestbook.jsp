<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.yimai.entity.Comment" %>
<%@ page import="com.yimai.Dao.CommentDao"%>
<%@ page import="com.yimai.Dao.impl.CommentDaoImpl"%>
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
    <title>���������Թ���</title>
    
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js">

</script>
  </head>
  
  <body>
<div id="header" class="wrap">
	<div id="logo"><a href="index.jsp"><img src="../images/logo.gif" /></a></div>
	<div class="help"><a href="../index.jsp">����ǰ̨ҳ��</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">��ҳ</a></li>
			<li><a href="user.jsp">�û�</a></li>
			<li><a href="product.jsp">��Ʒ</a></li>
			<li><a href="order.jsp">����</a></li>
			<li class="current"><a href="guestbook.jsp">����</a></li>
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
		<h2>���Թ���</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>����</th>
					<th>��������</th>
					<th>״̬</th>
					<th>����</th>
				</tr>	
				<%
				   List<Comment> list = new ArrayList<Comment>();
				   CommentDao dao = new CommentDaoImpl();
				   list = dao.getAll();
				   for (int i = 0; i < list.size(); i++) {
								Comment com = list.get(i);
				 %>			
				<tr>
				
				<td class="first w4 c"><%=com.getEc_id()%></td>
					<td class="w1 c"><%=com.getEc_nick_name()%></td>
					<td><%=com.getEc_content()%></td>
						<%if(com.getEc_reply()==null) {%>
						<td class="w1 c">δ�ظ�</td>
					<%}else{ %>
						<td class="w1 c">�ѻظ�</td>
					<%} %>
					<td class="w1 c"><a href="guestbook-modify.jsp?id=<%=com.getEc_id()%>">�ظ�</a> <a href="../CommentDeleteServlet?id=<%=com.getEc_id()%>">ɾ��</a></td>
				</tr>
			 <%
						}
						%>
			</table>
			<div class="pager">
				<ul class="clearfix">
					<li><a href="#">��һҳ</a></li>
					<li class="current">1</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">��һҳ</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 �������� All Rights Reserved. ��ICP֤1000001��
</div>
  </body>
</html>
