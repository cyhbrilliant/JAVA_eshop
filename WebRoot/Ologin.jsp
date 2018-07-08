
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Login</title>
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
            background: url(./images/topback8.jpg) no-repeat 0 0;
            z-index: 1;    
        
        }
        .logoLink {
            float: left;
            display: block;
            width: 200px;
            height: 70px;
            overflow: hidden;
            padding-top: 0px;
            font-size: 0;
            background: url(./images/logo7.png)  no-repeat left 15px;
        }
        
        .username{
       		position: absolute;
            right: 254px;
            top: 220px;
            width: 200px;
            height: 30px;
        }
        .utxt{
        	position: absolute;
            right: 450px;
            top: 225px;
        	width: 60px;
            height: 30px;
            font:  bold 12pt/14pt  Microsoft YaHei;
            color:#671089;
        }
        
        .secret{
        	position: absolute;
            right: 254px;
            top: 290px;
            width: 200px;
            height: 30px;
        }
        .stxt{
       		position: absolute;
            right: 450px;
            top: 295px;
        	width: 45px;
            height: 30px;
            font:  bold 12pt/14pt  Microsoft YaHei;
            color:#671089;
        }
        
        .barzcdl {
            float: left;
            width: 96px;
            height: 0;
            position: absolute;
            right: 320px;
            top: 370px;
            overflow: hidden;
            padding: 39px 0 0 0;   
            background: transparent url(./images/icons3.png) no-repeat 0 -244px;
            text-align: center;
            line-height: 39px;
            color: #fff;
        }
        
        .barzcdddl {
            float: left;
            width: 96px;
            height: 0;
            position: absolute;
            right: 320px;
            top: 430px;
            overflow: hidden;
            padding: 39px 0 0 0;   
            background: transparent url(./images/icons4.png) no-repeat 0 -244px;
            text-align: center;
            line-height: 39px;
            color: #fff;
        }
        .blank{
 			   
 			position:absolute;
 			right: 200px;
            top: 160px;
            width: 350px;
            height: 350px;
            background:transparent url(./images/loginblank.png);
        }
        
   </style>
  
  
  </head>
  
  <body>
  	<a class="logoLink"></a>
  	<div class="pic">
  		 
  		<div class="blank"></div>
  	    <s:form action="ologin" method="post">  
    	 <div class="utxt">用户名</div> 
        <s:textfield name="owner.oname"  class="username"></s:textfield> 
        <div class="stxt">密码</div> 
        <s:password name="owner.opassword"  class="secret"></s:password>       
       <s:submit value="登录" class="barzcdl"></s:submit>  
   </s:form>  
  		
  		<script language="JavaScript">
 			
 				function loginU() {
 				
 					var username=document.getElementById("username").value;
 			 	  	var secret=document.getElementById("secret").value;
 					<%  
 					
 					
						String name=request.getParameter("username");
						 //GoodsDaoImpl good=new GoodsDaoImpl();
						 //String secrettest=good.login(username);
 							
//						 if(secret.equals(secrettest)){
 					%>		
 					window.location.href ("Uloginqq.jsp");
 					
 					<%
// 					}
// 					else{
 						%>
 						
 						alert("用户名或密码错误");
 						alert(username);
 						alert("<%=name%>");
 						<%
 //					}
 					%>

 				}
 				function loginO() {
 					
 					window.location.href ("Ologinqq.jsp");;
 				}
 		</script>
  		
  	</div>
  	

  </body>
</html>
