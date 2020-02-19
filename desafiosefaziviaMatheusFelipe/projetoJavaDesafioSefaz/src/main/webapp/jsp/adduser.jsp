<%@page import="com.projetoJavaDesafioSefaz.Controller.UserDao"%>  
<jsp:useBean id="u" class="com.projetoJavaDesafioSefazBeans.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("http://localhost:8082/projetoJavaDesafioSefaz/jsp/adduser-success.jsp");  
}else{  
response.sendRedirect("http://localhost:8082/projetoJavaDesafioSefaz/jsp/adduser-error.jsp");  
}  
%>  