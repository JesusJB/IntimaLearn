/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class usuarios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String Nombre;
    private String Correo;
    private String Contra;
    private String rol;

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String email) {
        this.Correo = email;
    }

    public String getContra() {
        return Contra;
    }

    public void setContra(String Contra) {
        this.Contra = Contra;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (Nombre != null ? Nombre.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof usuarios)) {
            return false;
        }
        usuarios other = (usuarios) object;
        if ((this.Nombre == null && other.Nombre != null) || (this.Nombre != null && !this.Nombre.equals(other.Nombre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.usuarios[ nombreUsuario=" + Nombre+ " ]";
    }
    
}
