<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging in...</title>
    </head>
    <body>
        <%
            String username=request.getParameter("uname");
            String password=request.getParameter("pass");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
                Statement s=c.createStatement();
                ResultSet rs=s.executeQuery("select * from udetails where uname='"+username+"'and pass='"+password+"'");
                if(rs.next()){
                    %>
                    <script>
                        alert("Login success");
                        window.location.href="home.jsp";
                    </script>
                    <%
                }
                else{
                    %>
                    <script language="javascript">
                        alert("Enter valid credentials");
                        window.location.href="index.html";
                    </script>
                    <%
                }
            }
            catch(Exception e){
                out.print(e);
            }
            %>
    </body>
</html>
