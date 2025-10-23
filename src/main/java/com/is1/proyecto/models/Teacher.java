package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("teacher")
public class Teacher extends Model {

    
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