<%-- save.java
     Written By: Mr. Jake R. Pomperada, MAED-IT
     Date : July 17, 2015, Friday
     Tools: JSP and MySQL
            mysql-connecter-java-5.1.13-bin.jar
            netbeans ide 8.0.2
--%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;   }; "
           + "</style>");

%>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "users";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","");
try{
Statement st = con.createStatement();
String name=request.getParameter("name");
String city=request.getParameter("city");
String telephone=request.getParameter("telephone");

int val = st.executeUpdate("INSERT student_info "
        + "VALUES(id,'"+name+"','"+city+"','"+telephone +"')");

con.close();
out.println("<p> The record of " +"<b>"+ name +"</b>" + " is successfully saved. </p>");
out.println("<br>");
out.println("<a href='list.jsp'> RETURN TO MAIN PAGE </a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>
