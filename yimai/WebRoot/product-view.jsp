<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="com.yimai.entity.Product" />
<jsp:directive.page import="com.yimai.Dao.ProductDao" />
<jsp:directive.page import="com.yimai.Dao.impl.ProductDaoImpl" />
<%@page import="com.yimai.entity.ProductItem"%>
<jsp:directive.page import="com.yimai.entity.User" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>��������ϸ��Ʒ</title>
    
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
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; <a href="product-list.jsp">ͼ������</a> &gt; ͼ��
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
	<div id="product" class="main">
	    <%
					int id = Integer.parseInt(request.getParameter("id"));
					Product pro = new Product();
					ProductDao dao = new ProductDaoImpl();
					pro = dao.getById(id);
					List<ProductItem> viewhistory = (List) session.getAttribute("viewhistory");
					boolean flag = true;
					if (viewhistory == null) {
						viewhistory = new ArrayList<ProductItem>();
					}
					for (int i = 0; i < viewhistory.size(); i++) {
						if (viewhistory.get(i).getPto().getEp_id() == id) {
							flag = false;
							break;
						}
					}
					if (flag) {
						ProductItem viewitem = new ProductItem(pro, 1);
						viewhistory.add(viewitem);
						session.setAttribute("viewhistory", viewhistory);

					}
				%>
	
		<h1><%=pro.getEp_name()%></h1>
		<div class="infos">
			<div class="thumb"><img src="images/product/<%=pro.getEp_file_name()%>" /></div>
			<div class="buy">
				<p>�̳Ǽۣ�<span class="price">��<%=pro.getEp_price()%></span></p>
				<p>�⡡�棺<%=pro.getEp_stock() %></p>
				<div class="button"><input type="button" name="button" value="" onclick="goBuy(1)" /><a href="ShoppingAddServlet?id=<%=pro.getEp_id()%>">���빺�ﳵ</a></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="introduce">
			<h2><strong>��Ʒ����</strong></h2>
			<div class="text">
				<%=pro.getEp_description() %>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
  </body>
</html>
