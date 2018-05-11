<%@ page language="java" pageEncoding="GB18030"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
<title>点名系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link type="text/css" href="<%=request.getContextPath()%>/style.css" rel="stylesheet"  />
<html:base/>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" text="#666666" link="#336699" vlink="#cc6699" alink="#ffcc33" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td background="image2/bg_top.jpg"><img src="image2/spacer.gif" width="1" height="25"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="image2/spacer.gif" width="10" height="1"></td>
    <td width="510"><img src="image2/obj_sitetitle.gif" width="207" height="29"></td>
    <td>福州大学<br>
      数学与计算机科学学院<br>
      计算机工程训练第11组</td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td background="image2/obj_bar.gif"><img src="image2/spacer.gif" width="1" height="25"></td>
  </tr>
</table>
  <center>
  	<font color="red" size="2">${message}</font><br><br><br>
  	<input type="button" value="返回登陆" onclick="window.location.href='<%=request.getContextPath()%>/'"/>
  </center>
</html>