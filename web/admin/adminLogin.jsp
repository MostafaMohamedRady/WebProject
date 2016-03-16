<%-- 
    Document   : adminLogin
    Created on : Mar 11, 2016, 12:28:37 PM
    Author     : Aya Mahmoud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin home page</title>
    </head>
    <body>
    <center>
        <h1>Home of Music</h1>
        <p>please enter your administrator user and password</p>
        <form  method="post" action="AdminHomeController">
        Username: &nbsp;<input type="text" name="user"/><br><br>
        Password: &nbsp;  <input type="password" name="pwd"/>
        <pre>                     <input type="submit" value="  Login  "></pre>
        </form>
    </center>  
    </body>
</html>
