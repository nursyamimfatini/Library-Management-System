/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.library.model;

/**
 *
 * @author USER
 */
public class Reg implements java.io.Serializable {
    
    private String ic;
    private String first_name;
    private String last_name;
    private String username;
    private String email;
    private String password;

        public Reg(){
        ic="";
        first_name="";
        last_name="";
        username="";
        email="";
        password="";
        
    }


    public String getIc(){
        return ic;
    }
    public void setIc(String ic){
        this.ic=ic;
        }
    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name){
        this.first_name=first_name;
    }
    public String getLast_name(){
        return last_name;
    }
    public void setLast_name(String last_name){
        this.last_name=last_name;
    }
    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username=username;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail (String email){
        this.email=email;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword (String password){
        this.password=password;
    }
    
    
}
