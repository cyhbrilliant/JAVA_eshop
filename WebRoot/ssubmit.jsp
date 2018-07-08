<%@page import="org.hibernate.Query"%>
<%@page import="com.shop.beans.Goods"%>
<%@page import="com.shop.hibernate.GoodsHibernate"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>clothes</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<style type="text/css">
       .pic{
       		float: left;
            width: 1920px;
            height: 900px;
            padding-top: 0px;
            background: url(./images/clothesback2.jpg) no-repeat 0 0;
            z-index: 1;    
        
        }
        .logoLink {
            float: left;
            display: block;
            width: 200px;
            height: 90px;
            overflow: hidden;
            padding-top: 0px;
            font-size: 0;
            background: url(./images/logo7.png)  no-repeat left 15px;
        }
        

        
        .title{
        	position: absolute;
       		right: 540px;
            top: 300px;
        	width: 600px;
            height: 100px;
        	font: bold 80pt/85pt  Microsoft JhengHei;
        	color: #00c325;
        }
        
        .block{
        	width: 400px;
            height: 250px;
            
        }
        .gpic{
        	float: left;
            display: block;
            width: 200px;
            height: 200px;
            overflow: hidden;
            padding-top: 0px;
            font-size: 0;
            background: url(./images/gpic.png)  no-repeat 0 0;
        
        }
        .detilblock{
      		
            display: block;
            width: 200px;
            height: 200px;
            padding-left: 200px;
            font-size: 0;
            
        }
        .gname{
        	float: left;
            width: 200px;
            height: 50px;
            overflow: hidden;
            font:   20pt/20pt  Microsoft JhengHei;
        }
        .gbrand{
        	float: left;
            width: 200px;
            height: 50px;
            overflow: hidden;
            font:   20pt/20pt  Microsoft JhengHei;
        
        }
        .gprice{
        	float: left;
            width: 200px;
            height: 50px;
            overflow: hidden;
            font:   20pt/20pt  Microsoft JhengHei;
        
        }
        .gdescription{
        	float: left;
            width: 200px;
            height: 50px;
            overflow: hidden;
            font:   20pt/20pt  Microsoft JhengHei;
        
        }
        .buy{
        	float: left;
            width: 400px;
            height: 50px;
            overflow: hidden;
            padding-top: 0px;
            background-color:#00c325;
        }
        .textbuy{
        	width: 400px;
            height: 50px;
            padding-left: 173px;
            padding-top: 12px;
        	font:   20pt/20pt  Microsoft JhengHei;
        	color: #ffffff;
        }
        
        
   </style>
  </head>
  
  <body>
	<a class="logoLink"></a>
  	<div class="pic">
  		<div class="title">查看 发布</div>
  	</div>
  	<%
  		String oid=request.getParameter("oid");
    	GoodsHibernate goodsHibernate=new GoodsHibernate();
    	List<Goods> goods=goodsHibernate.findGoodsByOid(Integer.parseInt(oid));
    	request.getSession().setAttribute("goods", goods);
  	 %>
  	<% 
  		int num=goods.size();
  		int i=0;
  		for ( i=0;i<num;i++){
  			int cols=i%4;
  			int rows=(int)(i/4);
  			String idnum=""+i; 
  		%>
  			
  			
  				
  			<div id=<%=idnum %> class="block" >
  				
  			<div class="gpic"></div> 
  			<div class="detilblock">
  				<div class="gname"><%="名称："+goods.get(i).getName() %></div>
  				<div class="gbrand"><%="品牌："+goods.get(i).getBrand()%></div>
  				<div class="gdescription"><%="描述："+goods.get(i).getDescription()%></div>
  				<div class="gprice"><%="单价："+goods.get(i).getPrice()%></div>
  			
  			</div>
  			<div class="buy" onclick="onbuy()">
  				<div class="textbuy">删除</div>
  				<script language="javascript">
  				function onbuy(){
		  				xzb=event.screenX;
						yzb=event.screenY;
						var cols=parseInt((xzb-50)/450);
						var rows=parseInt((yzb-500)/320);
						var id=4*rows+cols;
						
  				
	       				window.location.href ("delsuccess.jsp?id="+id);
         			}
  				</script>
  				
  			</div>
  			
  			
  			</div>
  			
  			
  			<script language="javascript">
       			var divObj=document.getElementById(<%=idnum %>);
         		divObj.style.position="absolute";
         		divObj.style.left=450*<%=cols%>+50;
         		divObj.style.top=320*<%=rows%>+500;
  			</script>
  		
  		
  			<script language="javascript">
  			function over2chgcl(){
       			var divObj=document.getElementById(<%=idnum %>);
         		divObj.style.backgroundColor="black";  
         		}
  			</script>
  			
  		<% 	
  		
  			
  		}
  	%>
  	
  </body>
</html>
