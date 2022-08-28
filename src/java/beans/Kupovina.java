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
public class Kupovina {
    
    
    private String id;
    private String imeProizvoda;
    private String klijentIme;
    private String klijentPrezime;
    private String proizvodID;
    private String korisnikID;
   
    public Kupovina()
    {
    
    }
    
    public Kupovina( String id, String imeProizvoda, String klijentIme, String klijentPrezime, String proizvodID, String korisnikID)
    {
    
      this.id=id;
      this.imeProizvoda=imeProizvoda;
      this.klijentIme=klijentIme;
      this.klijentPrezime=klijentPrezime;
      this.korisnikID=korisnikID;
      this.proizvodID=proizvodID;
    }
    
    
    
    public String getID()
    {
       return id;
    }
    
    public void setID(String id)
    {
      this.id=id;
    }
    
    public String getImeProizvoda()
    {
      return imeProizvoda;
    }
    
    public void setImeProizvoda(String imeProizvoda)
    {
      this.imeProizvoda=imeProizvoda;
    }
    
    public String getKlijentIme()
    {
      return klijentIme;
    }
    
    public void setKlijentIme(String klijentIme)
    {
       this.klijentIme=klijentIme;
    }
    
    public String getKlijentPrezime()
    {
       return klijentPrezime;
    }
    
    public void setKlijentPrezime(String klijentPrezime)
    {
       this.klijentPrezime=klijentPrezime;
    
    }
    
    public String getProizvodID()
    {
      return proizvodID;
    }
    
    public void setProizvodID(String proizvodID)
    {
      this.proizvodID=proizvodID;
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
