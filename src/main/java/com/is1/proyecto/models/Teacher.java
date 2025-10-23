package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("teacher")
public class Teacher extends Model {

    // ActiveJDBC mapea automáticamente las columnas de la tabla 'users'
    // (como 'id', 'name', 'password', etc.) a los atributos de esta clase.
    // No necesitas declarar los campos (id, name, password) aquí como variables de instancia,
    // ya que la clase Model base se encarga de la interacción con la base de datos.

    // Opcional: Puedes agregar métodos getters y setters si prefieres un acceso más tipado,
    // aunque los métodos genéricos de Model (getString(), set(), getInteger(), etc.) ya funcionan.

    
    public Integer getDNI(){
        return getInteger("person_id");
    }

    public void setDNI(Integer dni){
        set("person_id",dni);
    }

    public String getCorreo() {
        return getString("correo"); 
    }

    public void setCorreo(String name) {
        set("correo", name); 
    }

    public String getDegree() {
        return getString("degree"); 
    }

    public void setDegree(String degree) {
        set("degree", degree); 
    }

}