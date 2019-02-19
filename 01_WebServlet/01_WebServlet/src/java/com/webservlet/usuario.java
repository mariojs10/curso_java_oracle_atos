/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

/**
 *
 * @author USUARIO
 */
public class usuario {
    private String nombre;
    private int edad;
    private String mail;
    private String contraseña;

    public usuario(String nombre, int edad, String mail, String contraseña){
        this.nombre = nombre;
        this.edad = edad;
        this.mail = mail;
        this.contraseña = contraseña;
    }
    
   
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
     
}
