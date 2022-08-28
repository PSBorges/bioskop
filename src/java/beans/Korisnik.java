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
public class Korisnik {
    
    private String korisnikID;
    private String ime;
    private String prezime;
    private String korisnickoIme;
    private String sifra;
    private String email;
    private String telefon;
    private String adresa;
    private String jmbg;
    private String grad;
    private String tip;
    
    
    
    
    public Korisnik()
    {
    
    korisnikID="";
    ime="";
    prezime="";
    korisnickoIme="";
    sifra="";
    email="";
    telefon="";
    adresa="";
    jmbg="";
    grad="";
    tip="";
    
    }
    
    
      public Korisnik(String korisnikID ,String ime, String prezime, String korisnickoIme, String sifra,String email,String telefon,String adresa,String jmbg, String grad, String tip)
    {
    
         this.korisnikID=korisnikID;
         this.ime=ime;
         this.prezime=prezime;
         this.korisnickoIme=korisnickoIme;
         
         this.sifra=sifra;
         this.email=email;
         this.telefon=telefon;
         this.adresa=adresa;
         this.jmbg=jmbg;
         this.grad=grad;
         this.tip=tip;
         

    }
    
      
     
    
    
    
    public String getKorisnikID()
    {
      return korisnikID;
    }
    
    public void setKorisnikID(String korisnikID)
    {
    
         this.korisnikID=korisnikID; 
    
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
    
    public String getKorisnickoIme()
    {
      return korisnickoIme;
    
    }
    
    public void setKorisnickoIme(String korisnickoIme)
    {
     this.korisnickoIme=korisnickoIme;
    }
    
    public String getSifra()
    {
       return sifra;
    }
    
    public void setSifra(String sifra)
    {
        this.sifra=sifra;
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public void setEmail(String email)
    {
        this.email=email;
    }
            
    public String getTelefon()
    {
        return telefon;
    }
    
    public void setTelefon(String telefon)
    {
        this.telefon=telefon;
    }
    
    public String getAdresa()
    {
      return adresa;
    }
    
    public void setAdresa(String adresa)
    {
      this.adresa=adresa;
    }
    
    
    public String getJMBG()
    {
        return jmbg;
    }
        
    public void setJMBG(String jmbg)
    {
      this.jmbg=jmbg;
    }
    
    public String getGrad()
    {
        return grad;
    }
    
    public void setGrad(String grad)
    {
        this.grad=grad;
    }
    
    public String getTip()
    {
       return tip;
    }
    
    public void setTip(String tip)
    {
       this.tip=tip;
    }
    
}
