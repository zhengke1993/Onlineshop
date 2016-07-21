<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="com.yimai.Dao.NewsDao" />
<jsp:directive.page import="com.yimai.Dao.impl.NewsDaoImpl" />
<jsp:directive.page import="com.yimai.entity.News" />
<jsp:directive.page import="com.yimai.entity.User" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>�������Ķ�����</title>
    
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
				��ӭ����<%=user.getEu_user_id()%><a href="UserLogoutServlet">[ע����¼]</a><a
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
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; �Ķ�����
</div>
<div id="main" class="wrap">
	<div class="left-side">
		<div class="news-list">
			<h4>���¹���</h4>
			
			<ul><%
							List<News> list = new ArrayList<News>();
							NewsDao dao = new NewsDaoImpl();
							list = dao.getAll();
							for (int i = 0; i < list.size(); i++) {
								News news = new News();
								news = list.get(i);
						%>
						<li>
						
							<a href="news-view.jsp" target="_blank"><%=news.getEn_title() %></a>
						</li>	
						<%
							}
						%>	
					</ul>
					
		</div>
		<div class="spacer"></div>
		<div class="news-list">
			<h4>���Ŷ�̬</h4>
			<ul>
				<%
							list = dao.getAll();
							for (int i = 0; i < list.size(); i++) {
								News news = new News();
								news = list.get(i);
						%>
						<li>
							<a href="news-view.jsp" target="_blank"><%=news.getEn_title()%></a>
						</li>		
						<%
							}
						%>
					</ul>
					
		</div>
	</div>
	<div class="manage">
	<table class="list">
				<tr>
					<th>���ű���</th>
					<th>��������</th>
					<th>����ʱ��</th>
				</tr>
				<tr>
			  <%
							list = dao.getAll();
							for (int i = 0; i < list.size(); i++) {
								News news = new News();
								news = list.get(i);
						%>
					<td ><%=news.getEn_title()%></td>
					<td><%=news.getEn_content()%></td>
					<td class="first w4 c"><%=news.getEn_create_time() %></td>
				</tr>
				<%
							}
						%>
			</table>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 �������� All Rights Reserved. ��ICP֤1000001��
</div>
  </body>
</html>