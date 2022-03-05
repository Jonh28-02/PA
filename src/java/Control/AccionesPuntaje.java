/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Puntaje;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author river
 */
public class AccionesPuntaje {
    
    public static int registrarPuntaje(Puntaje b){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Cpuntajes(nom_usu, lecciones_completadas, puntaje)"
                    + "values(?,0,0)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,b.getNom_usu());

            
            estatus=ps.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
    public static int actualizarPuntaje(Puntaje b){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update Cpuntajes set lecciones_completadas=?, puntaje=?"
                    +"where nom_usu=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, b.getLecciones_completadas());
            ps.setString(2, b.getPuntaje());
            ps.setString(3, b.getNom_usu());

            
            estatus=ps.executeUpdate();
            System.out.println("Actualizacion exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al actualizar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
     public static List<Puntaje>  getAllPuntajes(){
        List<Puntaje> lista= new ArrayList<Puntaje>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Cpuntajes";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Puntaje b=new Puntaje();
                b.setId_puntaje(rs.getByte(1));
                b.setNom_usu(rs.getString(2));
                b.setLecciones_completadas(rs.getString(3));
                b.setPuntaje(rs.getString(4));
                lista.add(b);
            }
            System.out.println("Se encontro a los usuarios");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
     
     public static  Puntaje  buscarUsuarioByNom(String nombreUsuario){
        Puntaje b=new Puntaje();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from usuario where nom_usu=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setString(1, nombreUsuario);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                b.setId_puntaje(rs.getInt(1));
                b.setNom_usu(rs.getString(2));
                b.setLecciones_completadas(rs.getString(3));
                b.setPuntaje(rs.getString(4));
                
            }
            System.out.println("Se encontro al Usuario");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return b;
    }
    
}
