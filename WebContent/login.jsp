<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");
session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon","root","sheetal");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'");
response.setHeader ("Pragma", "no-cache");
response.setHeader ("Cache-Control", "no-cache");
response.setHeader ("Cache-Control", "no-store");     

try{
	
	if (userid.equals("sheetal") && password.equals("sheetal")) {
        response.sendRedirect("AdminHome.jsp");
    } else {
    	if(userid.equals("sheetal")) {
        response.sendRedirect("Adminerror.jsp");}
    }
	if(userid!="sheetal"){
if(rs.next())

{
response.sendRedirect("userlogin.jsp");	
}
else{
	 response.sendRedirect("Adminerror.jsp");
	
}
}}
catch (Exception e) {
e.printStackTrace();
}
%>
