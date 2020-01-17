/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloOAD.Usuario;
import ModeloOAD.PersonaOAD;
import java.util.HashSet;
import java.util.Set;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PAPATELH
 */
public class Controlador extends HttpServlet {

    
    String listar="Listar.jsp";
    String add="add.jsp";
    String edit="edit.jsp";
    Usuario p=new Usuario();
    PersonaOAD oad = new PersonaOAD();
    int id;
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
       String acceso = "";
        String accion = request.getParameter("accion");
        if (accion.equals("Ingresar")){
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            /*String perfil = request.getParameter("perfil");*/
            p.setUsuario(usuario);
            p.setPassword(password);
           /* p.setPerfil(perfil);*/
            r = oad.validar(p);
            if (r==1){
                request.getSession().setAttribute("usuario", usuario);
                request.getSession().setAttribute("password",password);
               /* request.getSession().setAttribute("Perfil",perfil);*/
                request.getRequestDispatcher("http://localhost:8080/Latina/menu.jsp");
            }else{
                 request.getRequestDispatcher("http://localhost:8080/Latina/index.jsp");
            }
        }
             else if (accion.equalsIgnoreCase("Agregar")){
             String firstname= request.getParameter("primernombre");
             String lastname= request.getParameter("apellido");
             String cedula= request.getParameter("cedula");
             String usuario= request.getParameter("usuario");
             String password= request.getParameter("password");
             String contact= request.getParameter("contact");
               p.setFirstName(firstname);
               p.setLastName(lastname);
                p.setCedula(cedula);
               p.setUsuario(usuario);
                p.setPassword(password);
               p.setContact(contact);
               oad.add(p);
               acceso=listar;
        }else if(accion.equals("add")){
           acceso=add;
       }else if (accion.equals("editar")){
           request.setAttribute("id",request.getParameter("id"));
                acceso=edit;
       }
        else if(accion.equalsIgnoreCase("eliminar")){
           
           id=Integer.parseInt(request.getParameter("id"));
           p.setId(id);
           oad.eliminar(id);
           acceso=listar;
           
       }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request,response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        }
        
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
