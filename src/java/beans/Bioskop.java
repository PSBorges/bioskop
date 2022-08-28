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
public class Bioskop {
    
    
    private String bioskopID;
    private String naziv;
    private String lokacija;
    
    public Bioskop()
    {
        bioskopID="";
        naziv="";
        lokacija="";
     
    }
    
    public Bioskop(String bioskopID, String naziv, String lokacija)
    {
      this.bioskopID=bioskopID;
      this.naziv=naziv;
      this.lokacija=lokacija;
    
    }
    
    public String getBioskopID()
    {
      return bioskopID;
    }
    
    public void setBioskopID(String bioskopID)
    {
        this.bioskopID=bioskopID;
    }
    
    public String getNaziv()
    {
       return naziv;
    }
    
    public void setNaziv(String naziv)
    {
      this.naziv=naziv;
    }
    
    public String getLokacija()
    {
      return lokacija;
    }
    
    public void setLokacija(String lokacija)
    {
       this.lokacija=lokacija;
    }
          
    
    
}
