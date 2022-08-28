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
public class Kategorija {
    
    private String kategorijaID;
    private String imeKategorija;
    
    
    
    public Kategorija()
    {
        kategorijaID="";
        imeKategorija="";
    
    }
    
    
    
    public Kategorija(String kategorijaID, String imeKategorija)
    {
         this.kategorijaID=kategorijaID;
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
    
    public String getImeKategorija()
    {
        return imeKategorija;
    
    }
    
    public void setImeKategorija(String imeKategorija)
    {
       this.imeKategorija=imeKategorija;
    }
}
