package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("persona")
public class Person extends Model {

    
    public Integer getDNI(){
        return getInteger("person_id");
    }

    public void setDNI(Integer dni){
        set("person_id",dni);
    }

    public String getFirstName() {
        return getString("first_name");
    }

    public void setFirstName(String name) {
        set("first_name", name); 
    }

    public String getLastName() {
        return getString("last_name"); 
    }

    public void setLastName(String lastName) {
        set("last_name", lastName); 
    }

}