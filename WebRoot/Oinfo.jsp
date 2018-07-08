<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>信息修改</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	<style type="text/css">
       .pic{
       		float: left;
            width: 1920px;
            height: 1500px;
            padding-top: 0px;
            background: url(./images/info2.jpg) no-repeat 0 0;
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
       		right: 400px;
            top: 300px;
        	width: 800px;
            height: 100px;
        	font: bold 70pt/75pt  Microsoft JhengHei;
        	color: #cacc0e;
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
            background: transparent url(./images/icons6.png) no-repeat 0 -0px;
            text-align: center;
            line-height: 60px;
            color: #fff;
        }
        .blank{
        
        	margin-left:480px;
        	margin-top:500px;
        	background: url(./images/regback1.png)  no-repeat left 15px;
        	width: 1000px;
            height: 1200px;

        }
        .
        
        
   </style>
  </head>
  
 	<a class="logoLink"></a>
  	<div class="pic">
  		<div class="title">店主信息修改</div>
  		
  		<div class="blank">
  		
  		  <s:form action="oregister_update" method="post">  
  		
    	 <div class="utxt">用户名</div> 
        <s:textfield name="owner.oname"  class="username" value="%{owner.oname}" readonly="true"></s:textfield> 
        <div class="stxt">密码</div> 
        <s:textfield name="owner.opassword" class="secret" value="%{owner.opassword}"></s:textfield>
        <div class="atxt">住址</div>
        <s:textfield name="owner.Oadd"  class="age" value="%{owner.oadd}"></s:textfield> 
        <div class="ttxt">电话</div>
        <s:textfield name="owner.otel"  class="tel" value="%{owner.otel}"></s:textfield>
        
       <s:submit value="修改" class="barzc"></s:submit>  
   </s:form>
  		
  		
  		</div>
  	</div>
  	
  	
  	
  <body>
    
    
  </body>
</html>
