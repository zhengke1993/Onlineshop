<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.yimai.entity.Comment" %>
<%@ page import="com.yimai.Dao.CommentDao"%>
<%@ page import="com.yimai.Dao.impl.CommentDaoImpl"%>
<jsp:directive.page import="com.yimai.entity.User" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>���������԰�</title>
    
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="scripts/function.js"></script>

  </head>
  
  <body>
    <div id="header" class="wrap">
	<div id="logo"><a href="index.jsp"><img src="images/logo.gif" /></a></div>
	<%
				User user = new User();
				user = (User) session.getAttribute("user");
				if (user == null) {
			%>
			<div class="help">
				<a href="shopping.jsp" class="shopping">���ﳵ</a><a href="login.jsp">��¼</a><a
					href="register.jsp">ע��</a><a href="guestbook.jsp">����</a>
			</div>
		
			<%
				} else {
			%>


			<div class="help">
				��ӭ����<%=user.getEu_user_name()%><a href="UserLogoutServlet">[ע����¼]</a><a
					href="shopping.jsp" class="shopping">���ﳵ</a><a href="guestbook.jsp">����</a>
			</div>
			<%
				}
			%>
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
<div id="position" class="wrap">
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; ��������
</div>
<div id="main" class="wrap">
	<div class="lefter">
		<div class="box">
			<h2>��Ʒ����</h2>
			<dl>
				<dt>ͼ������</dt>
				<dd><a href="product-list.jsp">ͼ��</a></dd>
				<dd><a href="product-list.jsp">����</a></dd>
				<dt>�ٻ�</dt>
				<dd><a href="product-list.jsp">�˶�����</a></dd>
				<dd><a href="product-list.jsp">��װ</a></dd>
				<dd><a href="product-list.jsp">�Ҿ�</a></dd>
				<dd><a href="product-list.jsp">��ױ</a></dd>
				<dd><a href="product-list.jsp">ĸӤ</a></dd>
				<dd><a href="product-list.jsp">ʳƷ</a></dd>
				<dd><a href="product-list.jsp">�ֻ�����</a></dd>
				<dd><a href="product-list.jsp">�Ҿ�����</a></dd>
				<dd><a href="product-list.jsp">�ֱ���Ʒ</a></dd>
				<dd><a href="product-list.jsp">Ь��</a></dd>
				<dd><a href="product-list.jsp">�ҵ�</a></dd>
				<dd><a href="product-list.jsp">���԰칫</a></dd>
				<dd><a href="product-list.jsp">����ľ�</a></dd>
				<dd><a href="product-list.jsp">������Ʒ</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<div class="guestbook">
			<h2>ȫ������</h2>
			<ul>	<%
				   List<Comment> list = new ArrayList<Comment>();
				   CommentDao dao = new CommentDaoImpl();
				   list = dao.getAll();
				   for (int i = 0; i < list.size(); i++) {
								Comment com = list.get(i);
				 %>			
				<li>
					
					<dl>
						<dt><%=com.getEc_content()%></dt>
						<dd class="author">���ѣ�<%=com.getEc_nick_name() %><span class="timer"><%=com.getEc_create_time() %></span></dd>						
						<%if(com.getEc_reply()==null) {%><dd>δ�ظ�</dd>
						<%}else{ %>
						<dd>�ظ���<%=com.getEc_reply() %></dd>
						<%} %>
					</dl>

				</li>
			<%
						}
						%>
				
			</ul>
			<div class="clear"></div>
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
			<div id="reply-box">
				<form action="./CommentAddServlet" method="post">
					<table>
						<tr>
							<td class="field">�ǳƣ�</td>
							<td><input class="text" type="text" name="guestName" /></td>
						</tr>
						<tr>
							<td class="field">�������ݣ�</td>
							<td><textarea name="guestContent"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit" name="submit" value="�ύ����" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
  </body>
</html>
