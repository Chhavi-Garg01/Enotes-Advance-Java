package com.User;

public class UserDetails {
    private String name;
    private String email;
    private String password;
    private int id;
  
    public UserDetails(){
        super();
    }
    public UserDetails(int id,String name,String email,String password){
        super();
        this.id=id;
        this.name=name;
        this.email=email;
        this.password=password;
    }
    public String getName(){
        return name;
    }
     public int getId(){
        return id;
    }
   
    public String getEmail(){
        return email;
    }
    public String getPassword(){
        return password;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setId(int id){
        this.id=id;
    }
   
    public void setEmail(String email){
        this.email=email;
    }
    public void setPassword(String password){
        this.password=password;
    }
}
