<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book_Issue</title>
<style>
fieldset
{
background-color:purple;
}
</style>
</head>
<body background="F:\java_project_tools\project\lib.jpg"></body>
<body>
<% 
System.out.println("My sql connect example");
Connection conn=null;
String url="jdbc:mysql://localhost:3306/";
String dbName="lib";
String driver="com.mysql.jdbc.Driver";
String userName="root";
String password="tamil";
	Class.forName(driver).newInstance();
	conn=DriverManager.getConnection(url+dbName,userName,password);
	String access_no=(request.getParameter("access_no"));
	Object book_id=session.getAttribute("book_ID");
	Object author=session.getAttribute("AUTHOR");
	Object edition=session.getAttribute("EDITION");
	Object book_name=session.getAttribute("book_NAME");
	%>
<br><br><br><br><br><br><br><br>
<form>
<fieldset style="margin-left: 15%"; style= "margin-right: 15%"; style="border-width: 10px"; style="border-color:bisque" >
<center>	
<i><font color="white" size="8"><b>		Your book is issued! Happy learning!</b> </font></i><br>
<i><font color="white" size="6">	Want to browse more?	</font>	</i>	<br>
<br>
</center>
<pre>
		<a href="search_link.jsp"><font style="comicsansms" color="yellow" size="8"><i>yes</i></font></a>					<a href="lib_fr.jsp"><font style="comicsansms" color="yellow" size="8"><i>no</i></font></a></pre>
</fieldset>
</form>
	<% 
String query="update lib_tab set flag=0 where access_no="+access_no+"";
Statement ps=conn.createStatement();
ps.executeUpdate(query);
%>

</body>
</html>
