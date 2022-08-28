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
public class Rezervacija {
    
    private String rezervacijaID;
    private String bioskopID;
    private String nazivBioskopa;
    private String korisnikID;
    private String korisnikIme;
    private String korisnikPrezime;
    private String datum;
    private String brRezervacija;
    private String filmID;
    private String naslovFilm;
    private String salaID;
    private String sala;
    private String slikeR;
    

    
    public Rezervacija()
    {
    
    rezervacijaID="";
     bioskopID="";
     korisnikID="";
     korisnikIme="";
     korisnikPrezime="";
     datum="";
     nazivBioskopa="";
     brRezervacija="";
     filmID="";
     naslovFilm="";
     salaID="";
     sala="";
     
    }
    
    public Rezervacija(String rezervacijaID,String bioskopID, String korisnikID, String korisnikIme,String korisnikPrezime, String datum,String nazivBioskopa,String brRezervacija,String filmID,String naslovFilm,String salaID,String sala,String slikeR)
    {
        
     this.rezervacijaID=rezervacijaID;
     this.bioskopID=bioskopID;
     this.korisnikID=korisnikID;
     this.korisnikIme=korisnikIme;
     this.korisnikPrezime=korisnikPrezime;
     this.datum=datum;
     this.nazivBioskopa=nazivBioskopa;
     this.naslovFilm=naslovFilm;
     this.brRezervacija= brRezervacija;
     this.filmID=filmID;
     this.salaID=salaID;
     this.sala=sala;
     this.slikeR=slikeR;
    
    }
    
    
    
        public String getSlikeR()
    {
       return slikeR;
    }
    
    public void setSlikeR(String slikeR)
    {
       this.slikeR=slikeR;
    }
    
    
    
    
    
    
    
       public String getSala()
    {
        return sala;
    }
    
    public void setSala(String Sala)
    {
      this.sala=sala;
    
    }
    
    
    
    public String getRezervacijaID()
    {
        return rezervacijaID;
    }
    
    public void setRezervacijaID(String rezervacijaID)
    {
      this.rezervacijaID=rezervacijaID;
    
    }
    
    public String getBioskopID()
    {
     return bioskopID;
    }
    
    public void setBioskopID(String bioskopID)
    {
       this.bioskopID=bioskopID;
    }
    
    public String getKorisnikID()
    {
      return korisnikID;
    }
    
    public void setKorisnikID(String korisnikID)
    {
      this.korisnikID=korisnikID;
    }
    
    public String getKorisnikIme()
    {
      return korisnikIme;
    }
    
    public void setKorisnikIme(String korisnikIme)
    {
       this.korisnikIme=korisnikIme;
    
    }
    
    
    public String getKorisnikPrezime()
    {
      return korisnikPrezime;
    }
    
    public void setKorisnikPrezime(String korisnikPrezime)
    {
      this.korisnikPrezime=korisnikPrezime;
    }
    
    
    public String getDatum()
    {
    
      return datum;
    }
    
    public void setDatum(String datum)
    {
      this.datum=datum;
    }
    
    
    
    public String getNazivBioskopa()
    {
      return nazivBioskopa;
    
    }
    
    public void setNazivBioskopa(String nazivBioskopa)
    {
       this.nazivBioskopa=nazivBioskopa;
    }
    
    
    public String getSalaID()
    {
     return salaID;
    }
    
    public void setSalaID(String salaID)
    {
       this.salaID=salaID;
    }
    
    
    public String getBrRezervacija()
    {
        return brRezervacija;
    
    }
    
    public void setBrRezervacija(String brRezervacija)
    {
        this.brRezervacija=brRezervacija;
      
    }
    
    
    
    
    public String getFilmID()
    {
     return filmID;
    }
    
    public void setFilmID(String filmID)
    {
        this.filmID=filmID;
    
    }
    
    
    public String getNaslovFilm()
    {
      return naslovFilm;
    }
    
    public void setNaslovFilm(String naslovFilm)
    {
      this.naslovFilm=naslovFilm;

    }
    
}
