/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

import java.util.ArrayList;

/**
 *
 * @author USUARIO
 */
public class ServicioUsuarios {
    private final ArrayList<usuario> usList;
    private static ServicioUsuarios Instancia;
    
    private ServicioUsuarios(){
        usList = new ArrayList<usuario>();
    }    
      
    public  static ServicioUsuarios getInstancia() {
 
        if (Instancia == null) {
            Instancia = new ServicioUsuarios();
        }
        return Instancia;
    }
    
    public boolean addUser(String nom, int edad, String email, String passwd) {
        usuario nuevoUsu = new usuario(nom, edad, email, passwd);
        usList.add(nuevoUsu);
        return true;
    }
    
    public boolean validadcionPasswd(String email, String passwd) {
        for (usuario usuario : usList) {
            if (usuario.getMail().equals(email) && usuario.getContraseña().equals(passwd)){
                return true;
            }
            
        }
        return false;
    }
}   