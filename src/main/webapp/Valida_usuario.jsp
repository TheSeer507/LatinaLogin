<%-- 
    Document   : Valida_usuario
    Created on : Oct 11, 2019, 8:14:03 PM
    Author     : PAPATELH
--%>

<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<%@page import="ModeloOAD.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <%
   
            
            %>
    </head>
    <body>
        
         <%
          try{
          String nombre_usuario = request.getParameter("usuario");
          String password = request.getParameter("password");
          String perfil = request.getParameter("perfil");
          Connection con;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios_bd","root","");
          PreparedStatement pst = con.prepareStatement("SELECT usuario,password FROM usuario WHERE usuario=? AND password=? AND perfil=?");
          pst.setString(1,nombre_usuario);
          pst.setString(2,password);
          pst.setString(3,perfil);
          ResultSet rs = pst.executeQuery();
          if(rs.next()){
             /* out.println("Valid login credentials");*/
          session.setAttribute("usuario",nombre_usuario);
          session.setAttribute("role", perfil);
          response.sendRedirect("http://localhost:8080/Latina/menu.jsp");    
          }else{
              /*out.println("Invalid");*/
           response.sendRedirect("index.jsp");          
          }
          }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
       }      
            %>
        
        <%--
        <%
       String nombre_usuario = request.getParameter("usuario");
       String password = request.getParameter("password");
       String perfil = request.getParameter("perfil");
       
if(nombre_usuario.equals("hpatel") && password.equals("hpatel") )
{
    response.getWriter().print("<p>Me han pasado" + nombre_usuario + "</p");
    session.setAttribute("usuario", nombre_usuario);
    session.setAttribute("role", perfil);
    response.sendRedirect("http://localhost:8080/Latina/menu.jsp");
    
}else{
    response.sendRedirect("http://localhost:8080/Latina/errorLogin.jsp");
     response.getWriter().print("<p>Me han pasado" + nombre_usuario + "</p");
      response.getWriter().print("<p>Me han pasado" + password + "</p");
    
}
            %>
       --%>
    </body>
</html>
