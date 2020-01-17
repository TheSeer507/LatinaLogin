/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloOAD;

/**
 *
 * @author PAPATELH
 */
public class Usuario { 
    int id;
    String cedula;
    String firstname;
    String lastname;
    String usuario;
    String password;
    String contact;
    String perfil;
    
    public Usuario(){
        
    }
    
    public Usuario(int id, String cedula, String firstname, String lastname, String usuario, String password, String contact, String perfil) {
        this.id = id;
        this.cedula = cedula;
        this.firstname = firstname;
        this.lastname = lastname;
        this.usuario = usuario;
        this.password = password;
        this.contact = contact;
        this.perfil = perfil;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getFirstName() {
        return firstname;
    }

    public void setFirstName(String firstname) {
        this.firstname = firstname;
    }
    public String getLastName() {
        return lastname;
    }

    public void setLastName(String lastname) {
        this.lastname = lastname;
    }
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
   public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
     public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
}
    

