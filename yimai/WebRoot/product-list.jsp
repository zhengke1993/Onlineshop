<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.yimai.entity.ProductItem"%>
<%@page import="com.yimai.entity.ProductItem"%>
<jsp:directive.page import="com.yimai.Dao.impl.ProductDaoImpl" />
<jsp:directive.page import="com.yimai.entity.Product" />
<jsp:directive.page import="com.yimai.Dao.ProductDao" />
<jsp:directive.page import="com.yimai.entity.User" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>��������Ʒչʾ</title>
    
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="scripts/function.js"></script>

  </head>
  
  <body>
    <div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
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
	�����ڵ�λ�ã�<a href="index.html">������</a> &gt; <a href="product-list.html">ͼ������</a> &gt; ͼ��
</div>
<div id="main" class="wrap">
	<div class="lefter">
		<div class="box">
			<h2>��Ʒ����</h2>
			<dl>
				<dt>ͼ������</dt>
				<dd><a href="product-list.html">ͼ��</a></dd>
				<dd><a href="product-list.html">����</a></dd>
				<dt>�ٻ�</dt>
				<dd><a href="product-list.html">�˶�����</a></dd>
				<dd><a href="product-list.html">��װ</a></dd>
				<dd><a href="product-list.html">�Ҿ�</a></dd>
				<dd><a href="product-list.html">��ױ</a></dd>
				<dd><a href="product-list.html">ĸӤ</a></dd>
				<dd><a href="product-list.html">ʳƷ</a></dd>
				<dd><a href="product-list.html">�ֻ�����</a></dd>
				<dd><a href="product-list.html">�Ҿ�����</a></dd>
				<dd><a href="product-list.html">�ֱ���Ʒ</a></dd>
				<dd><a href="product-list.html">Ь��</a></dd>
				<dd><a href="product-list.html">�ҵ�</a></dd>
				<dd><a href="product-list.html">���԰칫</a></dd>
				<dd><a href="product-list.html">����ľ�</a></dd>
				<dd><a href="product-list.html">������Ʒ</a></dd>
			</dl>
		</div>
		<div class="spacer"></div>
		<div class="last-view">
			<h2>������</h2>
			<dl class="clearfix">
				<%
							List<ProductItem> list = (List) session.getAttribute("viewhistory");
							if (list != null) {
								for (int i = 0; i < list.size(); i++) {
									ProductItem pi = list.get(i);
						%>
						<dt>
							<img width="40px"
								src="images/product/<%=pi.getPto().getEp_file_name()%>" />
						</dt>
						<dd>
							<a href="product-view.jsp?id=<%=pi.getPto().getEp_id()%>"><%=pi.getPto().getEp_description()%></a>
						</dd>


						<%
							}
							}
						%>
		</div>
	</div>
	<div class="main">
		<div class="product-list">
			<h2>ȫ����Ʒ</h2>
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
			<div class="clear"></div>
			<ul class="product clearfix">
				<%
							ProductDao prodao = new ProductDaoImpl();
							List<Product> prodlist = new ArrayList<Product>();
							prodlist = prodao.getAll();

							for (int i = 0; i < prodlist.size(); i++) {
								Product pro = new Product();
								pro = prodlist.get(i);
						%>
						<li>
							<dl>
								<dt>
									<a href="product-view.jsp?id=<%=pro.getEp_id()%>"
										target="_blank"><img
											src="images/product/<%=pro.getEp_file_name()%>" /> </a>
								</dt>
								<dd class="title">
									<a href="product-view.jsp?id=<%=pro.getEp_id()%>"
										target="_blank"><%=pro.getEp_name()%></a>
								</dd>
								<dd class="price">
									��<%=pro.getEp_price()%></dd>
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
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 �������� All Rights Reserved. ��ICP֤1000001��
</div>
  </body>
</html>
