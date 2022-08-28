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
public class Reklamacija {
    
    
    private String id;
    private String sadrzaj;
    private String ime;
    private String prezime;
    private String email;
    private String korisnikID;
    
    
    
    public Reklamacija()
    {
       id="";
       sadrzaj="";
       ime="";
       prezime="";
       email="";
       korisnikID="";
    }
    
    
    public Reklamacija(String id, String sadrzaj, String ime, String prezime, String email, String korisnikID)
    {  
        this.id=id;
        this.sadrzaj=sadrzaj;
        this.ime=ime;
        this.prezime=prezime;
        this.email=email;
        this.korisnikID=korisnikID;
    
        
    }
    
    public String getID()
    {
       return id;
    }
    
    public void setID(String ID)
    {
        this.id=ID;
    }
    
    public String getSadrzaj()
    {
      return sadrzaj;
      
    }
    
    public void setSadrzaj(String sadrzaj)
    {
      this.sadrzaj=sadrzaj;
    }
    
    public String getIme()
    {
       return ime;
    }
    
    public void setIme(String ime)
    {
      this.ime=ime;
       
    }
    public String getPrezime()
    {
       return prezime;
    }
    
    public void setPrezime(String prezime)
    {
       this.prezime=prezime;
    }
    
    public String getEmail()
    {
       return email;
    }
    
    public void setEmail(String email)
    {
       this.email=email;
    }
    
    
    public String getKorisnikID()
    {
       return korisnikID;
    }
    public void setKorisnikID(String korisnikID)
    {
       this.korisnikID=korisnikID;
    }
    
}
