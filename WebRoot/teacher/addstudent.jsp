<%@ page language="java" pageEncoding="GB18030"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<jsp:include flush="true" page="/teacher/teachertop.jsp"></jsp:include>
<center>
<img src="../image/ba_goriyo-annai2.gif" width="300" height="30"> 
   <br>
<table width="675" border="0" cellspacing="0" cellpadding="0">
<tr> 
   <td width="675" background="../image/line_banner.gif"><img src="../image2/spacer.gif" width="1" height="2"></td>
</tr>
</table><br>&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">${message}&nbsp;</font>
<table width="300"  border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#3D7BA3">
<html:form action="/teacher/student/adddo" method="post" onsubmit="return checkstudentform(this)">
 	<tr>
      <td align="center" bgcolor="94C9E7">用户名</td>
      <td align="left" bgcolor="FFFFFF"><html:text property="username" style="width:100%"/></td>
    </tr>
 	<tr>
      <td align="center" bgcolor="94C9E7">姓名</td>
      <td align="left" bgcolor="FFFFFF"><html:text property="name"  style="width:100%"/></td>
    </tr>
 	<tr>
      <td align="center" bgcolor="94C9E7">密码</td>
      <td align="left" bgcolor="FFFFFF"><html:password property="oldpassword" style="width:100%"  redisplay="false"/></td>
    </tr>
 	<tr>
      <td align="center" bgcolor="94C9E7">密码</td>
      <td align="left" bgcolor="FFFFFF"><html:password property="newpassword" style="width:100%"  redisplay="false"/></td>
    </tr>    
 	<tr>
      <td align="center" bgcolor="94C9E7">性别</td>
      <td align="left" bgcolor="FFFFFF"><html:radio property="sex" value="m"/>男&nbsp;
      <html:radio property="sex" value="f"/>女&nbsp;</td>
    </tr>      
 	<tr>
      <td align="center" bgcolor="94C9E7">地址</td>
      <td align="left" bgcolor="FFFFFF"><html:text property="address" style="width:100%"/></td>
    </tr>    
 	<tr>
      <td align="center" bgcolor="94C9E7">email</td>
      <td align="left" bgcolor="FFFFFF"><html:text property="email" style="width:100%"/></td>
    </tr>   
 	<tr>
      <td align="right" colspan="2" bgcolor="FFFFFF"><html:reset value="重置"/>&nbsp;&nbsp;&nbsp;&nbsp;<html:submit value="增加"/>&nbsp;&nbsp;&nbsp;</td>
    </tr>      
</html:form>   
          	
</table></center>  
<script>
if(!document.studentForm.sex[0].checked&&!document.studentForm.sex[1].checked){
	document.studentForm.sex[0].checked = true;
}
	function checkstudentform(sf){
		var message = "";
		var i = 1;
		if(!isUsername(sf.username.value)){
			message += i+") 用户名只能输入6-30个字母、数字、下划线\n";
			i++;
		}
		if(!isUsername(sf.oldpassword.value)){
			message += i+") 密码只能输入6-30个字母、数字、下划线\n";
			i++;
		}
		if(sf.oldpassword.value!=sf.newpassword.value){
			message += i+") 两次密码不一致\n";
			i++;
		}
		if(sf.name.value==""||sf.name.value.length>15){
			message += i+") 姓名不能为空且小于15字\n";
			i++;
		}
		if(sf.address.value==""||sf.address.value.length>20){
			message += i+") 地址不能为空且小于20字\n";
			i++;
		}
		if(sf.email.value==""||sf.email.value.length>40){
			message += i+") Email不能为空且小于40字母\n";
			i++;
		}			
		if(message!=""){
			alert(message);
			return false;
		}else{
			return true;
		}
											
	}
	//校验用户名：只能输入6-20个字母、数字、下划线
	function isUsername(s){
		var patrn=/^(\w){6,30}$/;
		if (!patrn.exec(s)) 
			return false;
		return true;
	}	
</script> 
<jsp:include flush="true" page="/teacher/teacherbottom.jsp"></jsp:include>