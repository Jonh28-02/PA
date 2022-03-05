/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;



import Modelo.progreso;
import Modelo.rutinas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author river
 */
public class AccionesPRO {
    
    public static int registrarImc(progreso c){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into progreso(usu, mes, peso, estatura, cintura, imc, igc )"
                    + "values(?,?,?, ?, ?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,c.getUsu() );
            ps.setString(2,c.getMes() );
            ps.setString(3,c.getPeso());
            ps.setString(4,c.getEstatura() );
            ps.setString(5,c.getCintura() );
            ps.setString(6,c.getImc() );
            ps.setString(7,c.getIgc() );

            
            estatus=ps.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
    public static List<progreso>  getAllUsuarios(String nom){
        List<progreso> lista= new ArrayList<progreso>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from progreso where usu = ? ORDER BY mes ASC";
            PreparedStatement ps=con.prepareStatement(q);
            
             ps.setString(1, nom);
             
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                progreso e=new progreso();
                e.setId_imc(rs.getByte(1) );
                e.setNom(rs.getString(2));
                e.setMes(rs.getString(3));
                e.setPeso(rs.getString(4));
                e.setEstatura(rs.getString(5));
                e.setCintura(rs.getString(6));
                e.setImc(rs.getString(7));
                e.setIgc(rs.getString(8));
                lista.add(e);
            }
            System.out.println("Se encontro progre");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    public static List<progreso>  getPeso(String nom){
        List<progreso> lista= new ArrayList<progreso>();
        try{
            Connection con=Conexion.getConnection();
            String q="select peso from progreso where usu = ? and mes = 1";
            PreparedStatement ps=con.prepareStatement(q);
            
             ps.setString(1, nom);
             
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                progreso e=new progreso();
                
                e.setPeso(rs.getString(1));
                
                lista.add(e);
            }
            System.out.println("Se encontro peso ");
            
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    
    public static int registrarrutina(rutinas e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into rutina(usu, rutina)"
                    + "values(?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getUsu() );
            ps.setInt(2,e.getRutina() );
           

            
            estatus=ps.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
    public static List<rutinas>  getAllRutinas(String nom){
        List<rutinas> lista= new ArrayList<rutinas>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from rutina where usu = ? ";
            PreparedStatement ps=con.prepareStatement(q);
            
             ps.setString(1, nom);
             
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                rutinas e=new rutinas();
                e.setRutina(1);
                lista.add(e);
            }
            System.out.println("Se encontro progre");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    
}
