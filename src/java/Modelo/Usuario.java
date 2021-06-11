/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author river
 */
public class Usuario {
    
    private int id_usu;
    private String nombre_usu;
    private String apellidoP_usu;
    private String apellidoM_usu;
    private String correo_usu;
    private String password_usu;

    public int getId_usu() {
        return id_usu;
    }

    public void setId_usu(int id_usu) {
        this.id_usu = id_usu;
    }

    public String getNombre_usu() {
        return nombre_usu;
    }

    public void setNombre_usu(String nombre_usu) {
        this.nombre_usu = nombre_usu;
    }

    public String getApellidoP_usu() {
        return apellidoP_usu;
    }

    public void setApellidoP_usu(String apellidoP_usu) {
        this.apellidoP_usu = apellidoP_usu;
    }

    public String getApellidoM_usu() {
        return apellidoM_usu;
    }

    public void setApellidoM_usu(String apellidoM_usu) {
        this.apellidoM_usu = apellidoM_usu;
    }

    public String getCorreo_usu() {
        return correo_usu;
    }

    public void setCorreo_usu(String correo_usu) {
        this.correo_usu = correo_usu;
    }

    public String getPassword_usu() {
        return password_usu;
    }

    public void setPassword_usu(String password_usu) {
        this.password_usu = password_usu;
    }
    
}
