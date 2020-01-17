/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloOAD;
import java.util.List;

/**
 *
 * @author PAPATELH
 */
public interface Validar {
    
     public int validar(Usuario per);
     public Usuario list(int id);
    public boolean add(Usuario per);
    public boolean edit(Usuario per);
    public boolean eliminar(int id);
}
