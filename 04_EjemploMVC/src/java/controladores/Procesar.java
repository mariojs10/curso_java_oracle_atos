/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.logica.GestionPersona;

/**
 *
 * @author USUARIO
 */
public class Procesar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String edad = request.getParameter("edad");

        GestionPersona.TipoResultado resultado;
        resultado = GestionPersona.getInstancia().guardarPersona(nombre, edad);
        switch (resultado) {
            case OK:
                request.getSession().setAttribute("persona1", 
                    GestionPersona.getInstancia().getPersona());
                request.getRequestDispatcher("exito.jsp").forward(request, response);
                break;
            case SIN_VALORES:
                request.getRequestDispatcher("errorCampos.jsp").forward(request, response);
                break;
            case EDAD_MAL:
                request.getRequestDispatcher("errornumeros.jsp").forward(request, response);
                break;
            case ERROR_IO:
                request.getRequestDispatcher("errorio.jsp").forward(request, response);
                break;
        }
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
