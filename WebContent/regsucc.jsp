<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Railway Reservation</title>
    </head>
 <style>

        marquee{
         font-size: 30px;
         font-weight: 800;
         color: #8ebf42;
         font-family: sans-serif;
        }
  
body{
	background:url("images/giphy.gif") no-repeat center fixed;
  background-size:cover;
  
  font-family: sans-serif;
}
input[type=text] {
  width: 100%;
  background: transparent;
}

input[type=password] {
  width: 100%;
  background: transparent;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
input[type=reset]:hover {
  background-color: #45a049;
}
</style>
 
  <body >
  
   
     <table bgcolor="#ffffcc"><tr><td><a href="index.html">
<img src="images/icon.png" alr="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td>
</tr>
</table>
        <center>
        <br> <br>
        
        <form method="post" action="login.jsp">
            
            <table bgcolor="#8ebf42" border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userid" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required /></td>
                    </tr>
                    </table>
                    <table>
                    
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> Register Successfull!!! For more user please <a href="register.html">Register</a></td>
                        
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <br><br><br>
        <marquee>Railway tracks can never take immediate turns, neither can your track of life! </marquee>
    </body>
</html>
