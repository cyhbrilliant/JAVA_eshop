<%@page import="com.shop.hibernate.GoodsHibernate"%>
<%@page import="com.shop.beans.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delsuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
    	String id=request.getParameter("id");
		System.out.println("jsdkjas"+id);
		List<Goods> goods=(List<Goods>)session.getAttribute("goods");
		System.out.println("list"+goods.get(Integer.parseInt(id)).getId());
		int gid=goods.get(Integer.parseInt(id)).getId();
		GoodsHibernate goodsHibernate=new GoodsHibernate();
		 goodsHibernate.delete(gid);
		%>
			
		<script language="javascript">
				alert("删除成功");	
				history.back();
				location.reload();
  		</script>
 

  <body>
   <h1>删除成功</h1>
 
  </body>
</html>
