/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;
import java.sql.*;

/**
 *
 * @author PAPATELH
 */
public class Conexion {
    Connection con;
    public Conexion (){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios_bd","root","");
        }catch (Exception e){
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
    
}
