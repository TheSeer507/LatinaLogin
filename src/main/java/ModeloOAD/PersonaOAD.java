/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloOAD;
import Config.Conexion;
import ModeloOAD.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import ModeloOAD.Validar;
import java.util.HashSet;
import java.util.Set;
/**
 *
 * @author PAPATELH
 */
public class PersonaOAD implements Validar{
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Usuario p=new Usuario();
    
   @Override
     public int validar (Usuario per){
        int r=0;
        String sql = "SELECT usuario,password FROM usuario WHERE usuario=? AND password=?";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1,per.getUsuario());
            ps.setString(2,per.getPassword());
           /* ps.setString(3,per.getPerfil());*/
            rs=ps.executeQuery();
            while (rs.next()){
                r=r+1;
            per.setUsuario(rs.getString("usuario"));
            per.setPassword(rs.getString("password"));
            /*per.setPerfil(rs.getString("Perfil"));*/
                
            }
            if (r==1){
                return 1;
            }
            else {
                return 0;
            }
        }
        catch (Exception e){
            return 0;
        }
    }
     
     public boolean add(Usuario per) {
   
      String sql="INSERT INTO usuario(usuario,password, firstname, lastname, cedula, contact, perfil)values('"+per.getFirstName()+"','"+per.getLastName()+"','"+per.getUsuario()+"','"+per.getPassword()+"','"+per.getCedula()+"','"+per.getPerfil()+"','"+per.getContact()+"')";

      try{
          con=cn.getConnection();
          ps=con.prepareStatement(sql);
          ps.execute();
      } catch (Exception e){
              
             
    }
      return false;
    }

    
    public List Listar() {
        ArrayList<Usuario> list= new ArrayList<>();
        String sql ="SELECT * FROM usuario";
        try{
            con =cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario per = new Usuario();
                per.setId(rs.getInt("id"));
                per.setCedula(rs.getString("cedula"));
                per.setFirstName(rs.getString("firstname"));
                per.setLastName(rs.getString("lastname"));
                per.setUsuario(rs.getString("usuario"));
                per.setPassword(rs.getString("password"));
                per.setContact(rs.getString("contact"));
                per.setPerfil(rs.getString("perfil"));
                list.add(per);
            }
        }catch (Exception e){
    }
        return list;
    }
    
    @Override
    public Usuario list(int id) {
        String sql="SELECT * FROM USUARIO WHERE id="+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();    
            while(rs.next()){
                p.setId(rs.getInt("id"));
                p.setCedula(rs.getString("cedula"));
                p.setFirstName(rs.getString("firstname"));
                p.setLastName(rs.getString("lastname"));
                p.setUsuario(rs.getString("usuario"));
                p.setPassword(rs.getString("password"));
                p.setContact(rs.getString("contact"));
                p.setPerfil(rs.getString("perfil"));
            }
        }catch(Exception e){
        }  
        return p;
    }
    
    @Override
    
    public boolean edit (Usuario per){
        String sql="UPDATE USUARIO SET";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="DELETE FROM USUARIO WHERE ID="+id;
        try{
          con=cn.getConnection();
          ps=con.prepareStatement(sql);
          ps.executeUpdate();
            
        }catch(Exception e){
    }
    return false;
}
    
    
    
}
