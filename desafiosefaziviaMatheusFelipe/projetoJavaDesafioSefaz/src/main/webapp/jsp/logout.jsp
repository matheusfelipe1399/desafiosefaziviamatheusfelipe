<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("http://localhost:8082/projetoJavaDesafioSefaz/index.jsp");
%>