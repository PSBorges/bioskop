/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author paulo
 */
public class Trajleri {
    
    
    private String id;
    private String video;
    private String imeFilm;
    
    
    
   public Trajleri()
   {
   
   }
   
    public Trajleri( String id, String video, String imeFilm)
   {
   
       this.id=id;
       this.video=video;
       this.imeFilm=imeFilm;
       
   }
    
    
    
    
    
    
    public String getID()
    {
        return id;
    }
    
    public void setID(String id)
    {
        this.id=id;
    }
    
    
    public String getImeFilm()
    {
        return imeFilm;
    }
    
    public void setImeFilm(String imeFilm)
    {
        this.imeFilm=imeFilm;
    }
    
    
    
    
    
    
     public String getVideo()
    {
       return video;
    }
    
    public void setVideo(String video)
    {
       this.video=video;
    }
    
    
    
}
