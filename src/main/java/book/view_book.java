/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package book;

/**
 *
 * @author USER
 */
public class view_book implements java.io.Serializable {
    
    
    private String title;
    private String author;
    private String year;
    
    public view_book(){
        
        title="";
        author="";
        year="";
          
}
    
    public String getTitle(){
        return title;
    }
    public void setTitle(String title){
        this.title=title;
    }
    public String getAuthor(){
        return author;
    }
    public void setAuthor(String author){
        this.author=author;
    }
    public String getYear(){
        return year;
    }
    public void setYear(String year){
        this.year=year;
    }
}
    
