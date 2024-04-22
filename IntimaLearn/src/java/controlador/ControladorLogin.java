/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import JPADAO.usuariosJpaController;
import entidades.usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "ControladorLogin", urlPatterns = {"/ControladorLogin"})
public class ControladorLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            //Guardamos en variables lo introducido por el usuario
            String NombreUsuario = request.getParameter("NombreU");
            String contra = request.getParameter("Contra");


            //Creamos un EMF
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("IntimaLearnPU");
            //Creamos un Objeto para el manejo de BD
            usuariosJpaController UJC = new usuariosJpaController(emf);
            
            //buscamos el usuario introducido por el formulario
            if (UJC.findusuarios(NombreUsuario) != null ){
                
                usuarios usu = UJC.findusuarios(NombreUsuario);
                
                //comprobamos que la contraseña del usuario sea correcta
                if (usu.getContra().equals(contra)){
                    //Comprobamos el rol del usuario, si es admin lo mandamos a la pantalla de administración, si es cliente lo mandamos a la tienda
                    switch (usu.getRol()) {
                        case "admin":
                            response.sendRedirect("admin.jsp");
                            return;
                        case "Usuario":
                            response.sendRedirect("index.jsp");
                            return;
                    }
                } else {
                     //Si la contraseña no es correcta, mandamos a la vista un mensaje de error
                    request.setAttribute("error", "La contraseña no coincide con el usuario");
                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                }
                
                
                
            } else {
                //Si el usuario no existe, mandamos a la vista un mensaje de error
                request.setAttribute("error", "El usuario buscado no existe");
                getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
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
