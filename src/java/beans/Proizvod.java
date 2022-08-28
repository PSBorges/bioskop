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
public class Proizvod {
    
    
    private String proizvodID;
    private String imeProizvoda;
    private String  cena;
    
    
    public Proizvod()
    { 
        proizvodID="";
        imeProizvoda="";
    }
    
    public Proizvod(String proizvodID, String imeProizvoda, String cena)
    { 
        this.proizvodID=proizvodID;
        this.imeProizvoda=imeProizvoda;
        this.cena=cena;
    
    }
    
     public String getCena()
    {
       return cena;
    }
    
    public void setCena(String cena)
    {
       this.cena=cena;
    
    }
    
    
    
    public String getProizvodID()
    {
       return proizvodID;
    }
    
    public void setProizvodID(String proizvodID)
    {
       this.proizvodID=proizvodID;
    
    }
    
    
    
    public String getImeProizvoda()
    {
        return imeProizvoda;
    
    }
    
    public void setImeProizvoda(String imeProizvoda)
    {
       this.imeProizvoda=imeProizvoda;
    
    }
    
    
}
