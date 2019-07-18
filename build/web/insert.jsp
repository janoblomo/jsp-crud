<%-- insert.java
     Written By: Mr. Jake R. Pomperada, MAED-IT
     Date : July 17, 2015, Friday
     Tools: JSP and MySQL
            mysql-connecter-java-5.1.13-bin.jar
            netbeans ide 8.0.2
--%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>
<head>
<title>Add Record </title>
</head>
<body>
<style>
    table, td, th {
    border: 1px solid green;
    font-family: arial;
    color: blue;
}

table {
    background-color: lightgreen;
   }
</style>
<%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;   }; "
           + "</style>");

%>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="save.jsp">

<h2 align="center">ADD RECORD</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Name:</b></td>
<td width="50%"><input type="text" name="name" size="50"/> </td>
</tr>
<tr>
<td width="50%"><b>City:</b></td>
<td width="50%"><input type="text" name="city" size="50"></td>
</tr>
<tr>
<td width="50%"><b>Telephone Number:</b></td>
<td width="50%"><input type="text" name="telephone" size="15"></td>
</tr>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</form>
</td>
</tr>
</table>
<% out.println("<br>");
out.println("<a href='list.jsp'> RETURN TO MAIN PAGE </a>");
%>

</body>
</html>
