<%@page import="com.shop.hibernate.GoodsHibernate"%>
<%@page import="com.shop.beans.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购买正在处理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<%
		String id=request.getParameter("id");
		System.out.println(id);
		
		List<Goods> goods=(List<Goods>)session.getAttribute("goods");
		System.out.println("list"+goods.get(Integer.parseInt(id)).getId());
		int gid=goods.get(Integer.parseInt(id)).getId();
		GoodsHibernate goodsHibernate=new GoodsHibernate();
		Boolean boolean1= goodsHibernate.updateCount(gid);
		if(boolean1){%>
			<script language="javascript">
				alert("购买成功");	
				history.back();
				location.reload();
  			</script>
  				<%
		}
		else{%>
			<script language="javascript">
				alert("购买失败,库存不足");	
				history.back();
				location.reload();
  			</script>
		
		<%
		}
	 %>
	 
    
	
  </body>
</html>
