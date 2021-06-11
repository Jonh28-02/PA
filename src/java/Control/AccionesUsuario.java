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

/**
 *
 * @author river
 */
public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Musuario(nom_usu, appat_usu, apmat_usu, password_usu)"
                    + "values(?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getNombre_usu());
            ps.setString(2,e.getApellidoP_usu());
            ps.setString(3,e.getApellidoM_usu());
            ps.setString(4,e.getPassword_usu());
            
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
            String q="select * from Musuario where nom_usu = ? and password_usu = ? ";
             
              
             PreparedStatement ps=con.prepareStatement(q);
                ps.setString(1,e.getNombre_usu());
                ps.setString(2,e.getPassword_usu());
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
             
                   estatus = estatus +1 ;
                   e.setNombre_usu(rs.getString("nom_usu"));
                   e.setPassword_usu(rs.getString("password_usu"));
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
}
