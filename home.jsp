<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="registervalidation.js"></script>
        <title>Home - Railway Reservation</title>
        <link rel="stylesheet" type="text/css" href="home.css">
    </head>
    <body>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="editdetails.jsp">Edit Details</a></li>
                <li><a href="">About</a></li>
                <li style="float: right;"><a href="index.html">Log out</a></li>
            </ul>
            <style>
                body
                {
                    background: darkgrey;
                }
                ul {
                  list-style-type: none;
                  margin: 0;
                  padding: 0;
                  overflow: hidden;
                  background-color: #333;
                }

                li {
                  float: left;
                }
                li a {
                  display: block;
                  color: white;
                  text-align: center;
                  padding: 14px 16px;
                  text-decoration: none;
                }
                li a:hover {
                  background-color: #111;
                }
            </style>
            <script type="text/javascript">
                function logoutFunction(){
                    Alert("ss");
                    confirm("Are you sure? Do you want to log out?");
                }
            </script>
    </body>
</html>
