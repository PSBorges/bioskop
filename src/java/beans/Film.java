/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Date;

/**
 *
 * @author paulo
 */
public class Film {
    
    
    //private Date datum = new  Date();
    
    
    
    private String filmID;
    private String naslov;
    private String sadrzaj;
    private String  datum;
    private String trajanje;
    private String imeKategorija;
    private String kategorijaID;
    private String slikaA;
    private String video;
    
    
    
    
    
        public String getVideo()
    {
       return video;
    }
    
    public void setVideo(String video)
    {
       this.video=video;
    }
    
    
    
    
    
    
    
    
    
    public String getSlikaA()
    {
       return slikaA;
    }
    
    public void setSlikaA(String slikaA)
    {
       this.slikaA=slikaA;
    }
    
    
    
    public String getFilmID()
    {
      return filmID;
    }
    
    public void setFilmID(String filmID)
    {
      this.filmID=filmID;
    }
    
    public String getNaslov()
    {
     return naslov;
     
    }
    
    public void setNaslov(String naslov)
    {
    
      this.naslov=naslov;
    }
    
    public String  getDatum()
    {
      return datum;
    
    }
    
    public void setDatum(String  datum)
    {
    
     this.datum=datum;
    }
    
    
    public String getTrajanje()
    {
      return trajanje;
    }
    
    public void setTrajanje(String trajanje)
    {
    
     this.trajanje=trajanje;
     
    }
    
    
    public String getSadrzaj()
    {
      return sadrzaj;
    }
    
    public void setSadrzaj(String sadrzaj)
    {
      this.sadrzaj=sadrzaj;
    }
    
    
    public String geImeKategorija()
    {
        return imeKategorija;
    }
    
    
    public void setImeKategorija(String imeKategorija)
    {
      this.imeKategorija=imeKategorija;
    }
    
    public String getKategorijaID()
    {
      return kategorijaID;
    
    }
    
    public void setKategorijaID(String kategorijaID)
    {
      this.kategorijaID=kategorijaID;
    }
    
    
   
    
    public Film()
    {
        
        filmID= "";
        naslov="";
       
        trajanje="";
        sadrzaj="";
        imeKategorija="";
        kategorijaID="";
        
        
    }
    
    public Film(String filmID,String naslov,String datum,String trajanje,String sadrzaj,String kategorijaID,  String imeKategorija, String slikaA)
    {
   
        this.filmID=filmID;
        this.naslov=naslov;
        this.datum=datum;
        this.trajanje=trajanje;
        this.sadrzaj=sadrzaj;
        this.imeKategorija=imeKategorija;
        this.kategorijaID=kategorijaID;
        this.slikaA=slikaA;
     
      
    }
    
    
    
}
