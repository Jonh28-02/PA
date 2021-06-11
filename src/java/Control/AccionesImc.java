/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;


import Modelo.IMC;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author river
 */
public class AccionesImc {
    
    public static int registrarImc(IMC c){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Cimc(nom_usu, altura, peso, imc)"
                    + "values(?,?,?, ?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,c.getNombre());
            ps.setString(2,c.getAltura());
            ps.setString(3,c.getPeso());
            ps.setString(4,c.getImc());

            
            estatus=ps.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
}
