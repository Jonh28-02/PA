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
public class Puntaje {
    
    private int id_puntaje;
    private String nom_usu, lecciones_completadas,puntaje;

    public int getId_puntaje() {
        return id_puntaje;
    }

    public void setId_puntaje(int id_puntaje) {
        this.id_puntaje = id_puntaje;
    }

    public String getNom_usu() {
        return nom_usu;
    }

    public void setNom_usu(String nom_usu) {
        this.nom_usu = nom_usu;
    }

    public String getLecciones_completadas() {
        return lecciones_completadas;
    }

    public void setLecciones_completadas(String lecciones_completadas) {
        this.lecciones_completadas = lecciones_completadas;
    }

    public String getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(String puntaje) {
        this.puntaje = puntaje;
    }
    
}
