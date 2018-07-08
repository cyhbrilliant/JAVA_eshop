<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        

        .block1{
       		float:left;
        	width: 300px;
            height: 100px;
            margin:20px 0;
            background: url(./images/blank123C.jpg);
        }
        .block2{
      		float:left;
        	width: 300px;
            height: 100px;
            margin:20px 0;
            background: url(./images/blank123D.jpg);
        }
        .block3{
        	float:left;
        	width: 300px;
            height: 100px;
            margin:20px 0;
            background: url(./images/blank123F.jpg);
        }
        
        
        
        
   </style>
  </head>
  
  <body>
	<a class="logoLink"></a>
	<a class="block1" onclick="openwin1()"></a>
	<a class="block2" onclick="openwin2()"></a>
	<a class="block3" onclick="openwin3()"></a>
	<%String id=request.getParameter("id"); %>
	<script language="JavaScript">
 			
 			function openwin1() {
 				window.open ("Csubmit.jsp?id="+<%=id%>);
 			}
 	</script>
 	<script language="JavaScript">
 			
 			function openwin2() {
 				window.open ("Dsubmit.jsp?id="+<%=id%>);
 			}
 	</script>
 	<script language="JavaScript">
 			
 			function openwin3() {
 				window.open ("Fsubmit.jsp?id="+<%=id%>);
 			}
 	</script>
  	
  </body>
</html>

