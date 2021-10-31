<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registering user...</title>
    </head>
    <body>
        <%
            String username=request.getParameter("uname");
            String password=request.getParameter("pass");
            String cpass=request.getParameter("cpass");
    		String gender=request.getParameter("gender");
    		String dob=request.getParameter("dob");
		    String occupation=request.getParameter("occupation");
		    String email=request.getParameter("email");
		    String address=request.getParameter("address");
		    String pincode=request.getParameter("pincode");
		    String phone=request.getParameter("phone");
		    String nationality=request.getParameter("nationality");
		    String temp[] = request.getParameterValues("purpose");
		    String purpose = "";
		    if(temp != null) {
		    	purpose = temp[0];
		    	for (int i = 1; i < temp.length; i++) 
      			{
        			purpose = purpose + "," +temp[i];
    			}
			}

            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
                Statement s=c.createStatement();
                ResultSet rs=s.executeQuery("select * from udetails where uname='"+username+"'");
                if(rs.next()){
                %>
                	<script type="text/javascript">
                		alert("Username already available");
                		window.location.href="registration.html";
                	</script>
                <%
            	}
                rs = s.executeQuery("select * from udetails where email='"+email+"'");
                if(rs.next()){
                %>
                	<script type="text/javascript">
                		alert("Email already available");
                		window.location.href="registration.html";
                	</script>
                <%
            }
                int r = s.executeUpdate("insert into udetails(uname,pass,gender,dob,occupation,email,address,pincode,phone,nationality,purpose) values('"+username+"','"+password+"','"+gender+"','"+dob+"','"+occupation+"','"+email+"','"+address+"','"+pincode+"','"+phone+"','"+nationality+"','"+purpose+"')");
                if(r != 0){
                    %>
                    <script>
                        alert("Registration success");
                        window.location.href="index.html";
                    </script>
                    <%
                }
                else{
                    %>
                    <script language="javascript">
                        alert("Incorrect UserName or Password");
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
