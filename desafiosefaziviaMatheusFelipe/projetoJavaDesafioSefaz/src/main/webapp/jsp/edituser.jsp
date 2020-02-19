<%@page import="com.projetoJavaDesafioSefaz.Controller.UserDao"%>  
<jsp:useBean id="u" class="com.projetoJavaDesafioSefazBeans.User"></jsp:useBean> 
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("http://localhost:8082/projetoJavaDesafioSefaz/jsp/viewusers.jsp");  
%>  