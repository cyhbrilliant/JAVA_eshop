<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>register</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<style type="text/css">
       .pic{
       		float: left;
            width: 100%;
            height: 100%;
            padding-top: 0px;
            background: url(./images/registerback1.jpg) no-repeat 0 0;
            z-index: 1;    
        
        }
        .logoLink {
            float: left;
            display: block;
            width: 200px;
            height: 60px;
            overflow: hidden;
            padding-top: 0px;
            font-size: 0;
            background: url(./images/logo7.png)  no-repeat left 15px;
        }
        

        
        .blank{
        
        	margin-left:480px;
        	margin-top:500px;
        	background: url(./images/regback2.png)  no-repeat left 15px;
        	width: 1000px;
            height: 1200px;

        }
        
        .title{
        	position: absolute;
       		right: 720px;
            top: 700px;
        	width: 300px;
            height: 100px;
        	font:   35pt/35pt  Microsoft JhengHei;
        }
        
        .username{
       		position: absolute;
            right: 750px;
            top: 900px;
            width: 250px;
            height: 50px;
        }
        
        .utxt{
        	position: absolute;
            right: 1000px;
            top: 912px;
        	width: 80px;
            height: 40px;
            font:   15pt/18pt  Microsoft JhengHei;
        }
        
        .secret{
        	position: absolute;
            right: 750px;
            top: 1000px;
            width: 250px;
            height: 50px;
        }
        .stxt{
       		position: absolute;
            right: 1000px;
            top: 1012px;
        	width: 80px;
            height: 40px;
            font:   15pt/18pt  Microsoft JhengHei;
        }
        
        .age{
        	position: absolute;
            right: 750px;
            top: 1100px;
            width: 250px;
            height: 50px;
        }
        
        .atxt{
       		position: absolute;
            right:1000px;
            top: 1112px;
        	width: 80px;
            height: 40px;
            font: 15pt/18pt  Microsoft JhengHei;
        }
        .tel{
        	position: absolute;
            right: 750px;
            top: 1200px;
            width: 250px;
            height: 50px;
        }
        
        .ttxt{
       		position: absolute;
            right: 1000px;
            top: 1212px;
        	width: 80px;
            height: 40px;
            font:   15pt/18pt  Microsoft JhengHei;
        }
        
        .barzc {
            width: 180px;
            height: 0;
            position: absolute;
            right: 800px;
            top: 1350px;
            overflow: hidden;
            padding: 60px 0 0 0;   
            background: transparent url(./images/icons.png) no-repeat 0 -0px;
            text-align: center;
            line-height: 60px;
            color: #fff;
        }
        
   </style>
  
  </head>
  
  <body>
  	<a class="logoLink"></a>
  	<div class="pic">
  		<div class="blank">
  			<div class="title"> 店主账号注册</div>
  			
  	<s:form action="oregister" method="post">  
    	 <div class="utxt">用户名</div> 
        <s:textfield name="owner.oname"  class="username"></s:textfield> 
        <div class="stxt">密码</div> 
        <s:password name="owner.opassword"  class="secret"></s:password> 
        <div class="atxt">住址</div>
        <s:textfield name="owner.oadd"  class="age"></s:textfield> 
        <div class="ttxt">电话</div>
        <s:textfield name="owner.otel"  class="tel"></s:textfield>
        
       <s:submit value="注册" class="barzc"></s:submit>  
   </s:form> 
  			
  		
  		</div>
  	</div>
  	
  </body>
</html>
