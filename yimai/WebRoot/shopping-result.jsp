<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="com.yimai.entity.User" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>����������ɹ�</title>
    
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
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; ���ﳵ
</div>
<div class="wrap">
	<div id="shopping">
		<div class="shadow">
			<em class="corner lb"></em>
			<em class="corner rt"></em>
			<div class="box">
				<div class="msg">
					<p>��ϲ������ɹ���</p>
					<p>���ڽ�����ҳ...</p>
					<script type="text/javascript">
						setTimeout("location.href='index.jsp'", 3000);
					</script>
				</div>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
