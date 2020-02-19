<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication?useTimezone=true&serverTimezone=UTC",
            "root", "12345");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from register3 where email='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("http://localhost:8082/projetoJavaDesafioSefaz/jsp/viewusers.jsp");
    } else {
        out.println("Invalid password");
        
		
        		
    }
    
%>
<a
		href="http://localhost:8082/projetoJavaDesafioSefaz/index.jsp">Try Again</a>