<%-- 
    Document   : index
    Created on : 07-13-2019, 01:14:35 AM
    Author     : janier
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Usuarios - CRUD JSP</title>
    </head>
    <body>
        <%
            //Conectando a la BD
            Connection con;
            String url= "jdbc:mysql://localhost:3306/test";
            String driver= "com.mysql.jdbc.Driver";
            String user= "root";
            String pswd= "1234";
            Class.forName(driver);
            con=DriverManager.getConnection(url,user,pswd);
            
            //Listar los datos
            PreparedStatement ps;
            ResultSet rs;
            ps=con.prepareStatement("select * from `usuario`");
            rs=ps.executeQuery();    
         %>
        <div class="container">
            <h1>Usarios</h1>
            <a class="btn btn-warning btn-sm" href="insert.jsp">Añadir usuario</a>
            <table class="table table-bordered">
                <tr>
                    <th class="text-center">No</th>
                    <th class="text-center">Nickname</td>
                    <th class="text-center">Contraseña</th>
                    <th class="text-center">Acciones</th>
                </tr>
                <% 
                    int i= 0;
                while(rs.next()){
                    i++;
                %>
                <tr>
                    <td class="text-center"><%=i%></td>
                    <td class="text-center"><%=rs.getString("Nombre")%></td>
                    <td class="text-center"><%=rs.getString("contrasenia")%></td>
                    <td class="text-center">
                        <a class="btn btn-warning btn-sm" href="edit.jsp">Editar</a>
                        <a class="btn btn-warning btn-danger btn-sm" href="delete.jsp">Eliminar</a> 
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>