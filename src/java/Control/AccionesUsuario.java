/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author river
 */
public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into usuario(nom_usu, appat, apmat, nom, genero, edad, password)"
                    + "values(?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getNom_usu());
            ps.setString(2,e.getAppat());
            ps.setString(3,e.getApmat());
            ps.setString(4,e.getNom());
            ps.setString(6,e.getEdad());
            ps.setString(5,e.getGenero());
            ps.setString(7,e.getPassword());
            
            estatus=ps.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
    public static int validar(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="select * from usuario where nom = ? and password = ? ";
             
              
             PreparedStatement ps=con.prepareStatement(q);
                ps.setString(1,e.getNom());
                ps.setString(2,e.getPassword());
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
             
                   estatus = estatus +1 ;
                   e.setNom(rs.getString("nom"));
                   e.setPassword(rs.getString("password"));
                   if(estatus == 1){
                   
                         return 1;
                   
             }else{
             
                   return 0;
             }
             }
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        
          }
        return 0;
    }
    public static List<Usuario>  getAllUsuarios(String nom){
        List<Usuario> lista= new ArrayList<Usuario>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from usuario where nom = ?";
            PreparedStatement ps=con.prepareStatement(q);
            
             ps.setString(1, nom);
             
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Usuario e=new Usuario();
                e.setId_usu(rs.getByte(1));
                e.setNom_usu(rs.getString(2));
                e.setAppat(rs.getString(3));
                e.setApmat(rs.getString(4));
                e.setNom(rs.getString(5));
                e.setEdad(rs.getString(7));
                e.setGenero(rs.getString(6));
                e.setPassword(rs.getString(8));
                lista.add(e);
            }
            System.out.println("Se encontro a los usuarios");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    
    public static int actualizarUusario(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update usuario set nom_usu=?, appat=?, apmat=?, nom=?, genero=?, edad=?, password=?"
                    +"where nom=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, e.getNom_usu() );
            ps.setString(2, e.getAppat() );
            ps.setString(3, e.getApmat() );
            ps.setString(4, e.getNom() );
            ps.setString(6, e.getEdad() );
            ps.setString(5, e.getGenero() );
            ps.setString(7, e.getPassword() );
            ps.setString(8, e.getNom() );

            
            estatus=ps.executeUpdate();
            System.out.println("Actualizacion exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al actualizar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
}
