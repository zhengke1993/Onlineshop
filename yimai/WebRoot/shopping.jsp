<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.yimai.entity.ProductItem"%>
<%@page import="com.yimai.entity.User"%>
<jsp:directive.page import="com.yimai.entity.User" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	User user =null;
	user = (User)session.getAttribute("user");
	if(user==null)
	{	out.print("<script type=text/javascript> alert('���ȵ�¼��');location.href='login.jsp'</script>");
					return;
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>���������ﳵ</title>
    
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js">
</script>
  </head>
  
  <body>
<div id="header" class="wrap">
	<div id="logo"><a href="index.jsp"><img src="images/logo.gif" /></a></div>
	<%
				
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
	�����ڵ�λ�ã�<a href="index.jsp">������</a> &gt; ���ﳵ
</div>
<div class="wrap">
	<div id="shopping">
		<form action="shopping-result.jsp">
			<table>
				<tr>
					<th>��Ʒ����</th>
					<th>��Ʒ�۸�</th>
					<th>��������</th>
					<th>����</th>
				</tr>
				<%
							List<ProductItem> list = (List) session.getAttribute("crt");
							ProductItem pr = new ProductItem();
							if (list != null) {
								for (int i = 0; i < list.size(); i++) {
									pr = list.get(i);
									
						%>
				<tr id="product_id_1">
					<td class="thumb"><img src="images/product/<%=pr.getPto().getEp_file_name()%>" /><a text=""><%=pr.getPto().getEp_name()%></a></td>
					<td class="price" id="price_id_1">
						<span>��<%=pr.getPto().getEp_price() * pr.getNum()%></span>
						<input type="hidden" value="99" />
					</td>
					<td class="number">
						<dl>
							<dt><input id="number_id_1" type="text" name="number" value="<%=pr.getNum()%>" /></dt>
							<dd onclick="./ShoppingUpdateServlet?num=<%=pr.getNum()%>)&id=<%=pr.getPto().getEp_id()%>">�޸�</dd>
						</dl>
					</td>
					<td class="delete"><a href="./ShoppingDeleteServlet?id=<%=pr.getPto().getEp_id()%>">ɾ��</a></td>
				</tr>
				<%
							}
							} else {
						%>
						<tr align="center">
							<td style="font-size: 30px;" >
								���ﳵ��ʲô��û��
							</td>
						</tr>
						<%
							}
						%>
			</table>
			<div class="button"><input type="submit" value="" /></div>
		</form>
	</div>
	<script type="text/javascript">
		<%
							List<ProductItem> vlist = (List) session.getAttribute("viewhistory");
							if (list != null) {
								for (int i = 0; i < vlist.size(); i++) {
									ProductItem pi = vlist.get(i);
						%>
						<dt>
							<img width="40px" src="images/product/<%=pi.getPto().getEp_file_name()%>" />
						</dt>
						<dd>
							<a href="product-view.jsp?id=<%=pi.getPto().getEp_id()%>"><%=pi.getPto().getEp_description()%></a>
						</dd>


						<%
							}
							}
						%>
	</script>
  </body>
</html>
