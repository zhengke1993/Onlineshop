<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>������������</title>
    
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript">
function setReceiver(obj)
{
	document.getElementById("reply-to").innerHTML = "�����ˣ�" + obj.innerHTML;
}
</script>
  </head>
  
  <body>
   <div id="chat-room">
	<div class="lefter">
		<h2>�����û��б�</h2>
		<ul>
			<li><a href="#" onclick="setReceiver(this);">����</a></li>
		</ul>
	</div>
	<div class="righter">
		<div id="history">
			<p>aaa</p>
			<p>aaa</p>
		</div>
		<div class="spacer"></div>
		<div id="reply-to">�����ˣ�����</div>
		<div class="reply">
			<input type="text" class="text" name="content" /><label class="ui-blue"><input type="button" value="����" /></label>
		</div>
	</div>
</div>
  </body>
</html>
