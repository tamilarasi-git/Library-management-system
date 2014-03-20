<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>library database</title>
<style>
fieldset
{
background-color:purple;
font-family:'comic sans ms';
}</style>
</head>
<script>
function goBack()
  {
  window.history.back()
  }
</script>
<body background="F:\java_project_tools\project\lib_3.jpg"></body>
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
	System.out.println("Connected to database");
	
	String book_id=(request.getParameter("book_id"));
	String access_no=(request.getParameter("access_no"));
	String book_name=(request.getParameter("book_name"));
	String author=(request.getParameter("author"));
	String edition=(request.getParameter("edition"));
	session.setAttribute("book_ID",book_id);
	session.setAttribute("book_NAME",book_name);
	session.setAttribute("access_NO",access_no);
	session.setAttribute("AUTHOR",author);
	session.setAttribute("EDITION",edition);
	%> 
	<br><br><br><br>
	<center><table border="5" bgcolor="bisque">
		<tr bgcolor="LavenderBlush">
				<th><i> book_id </i> </th>
				<th><i> access_no </i></th>
				<th><i> book_name </i></th>
				<th><i> author </i></th>
				<th><i> edition </i></th>
				</tr>
	<% 
	Statement ps=conn.createStatement();
	String query3="select book_id,access_no,book_name,author,edition from lib_tab where (book_name='"+book_name+"' or author='"+author+"') and flag=1";
	ResultSet rs2 = ps.executeQuery(query3);
	while(rs2.next())
	 {
		 int mat_book_id=rs2.getInt("book_id");
		 int mat_access_no=rs2.getInt("access_no");
		 String mat_book_name=rs2.getString("book_name");
		 String mat_author=rs2.getString("author");
		 int mat_edition=rs2.getInt("edition");
%>
				<tr bgcolor="Linen">
				<td> <%=mat_book_id %></td>
				<td> <%=mat_access_no %></td>
				<td> <%=mat_book_name %></td>
				<td> <%=mat_author %></td>
				<td> <%=mat_edition %></td>
				</tr>
<%		
	 }  %>   		
</table></center>
<br><br><br><br>
<form action="lib_issue.jsp" method="post">
 <fieldset style="margin-left: 30%"; style= "margin-right: 27%"; style="border-width: 10px"; style="border-color:pink" >
<pre>	
<i><font color="white" size="4"><b>	access_no	:</b><input type="text" name="access_no" maxlength="8"> </font></i><br>  <i><font color="white" size="4">To take a book type its access number</font>	</i>	<br>
<br>			<input type="submit" name="submit" value="issue">		<input type="button" value="Back" onclick="goBack()">
	</pre>
</fieldset>
</form>

</body>
</html>
