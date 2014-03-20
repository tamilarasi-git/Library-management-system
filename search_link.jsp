<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table
{
	background-color:bisque;
	font-family: 'comic sans ms';
}
fieldset
{
	background-color:#ffe2e3;
	font-family: 'comic sans ms';
}
</style>
<script>
function goBack()
  {
  window.history.back()
  }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>library database (lib_fr)</title>
</head>
<body background="F:\java_project_tools\project\library00.jpg"></body>
<body>
<%
System.out.println("MySQL Connect Example.");
Connection connec = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "lib";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String pass = "tamil";
Class.forName(driver).newInstance();
        connec = DriverManager.getConnection(url + dbName, userName, pass);
        System.out.println("Connected to the database");%>
<form action="lib_bk.jsp" method="post">
<br>
<br>
<br>
<br>	
<br>
<br>
<br>
<br>
<center>
<fieldset style="margin-left:35%"; style= "margin-right: 30%"; style="border-width: 10px"; style="border-color:orchid"> 
<pre>
<i>	
<font color="purple" size="4">
 book_name	: <input type="text" name="book_name" maxlength="50"><br><br><br>
 author	: <input type="text" name="author" maxlength="25"></font>
	<br><br></i></pre>
	
<br><pre>     
	<input type="submit" name="submit" value="search">	  <input type="reset" name="clear" value="clear">	   <input type="button" value="Back" onclick="goBack()">  </pre>
</fieldset>
</center>
</form>
 </body>
</html>
