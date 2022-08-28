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
public class Sala {
    
    
    private String salaID;
    private String brojSale;
    
    public Sala()
    {
       salaID="";
       brojSale="";
               
    }
    
    
    public Sala(String salaID, String brojSale)
    {
        this.salaID=salaID;
        this.brojSale=brojSale;
        
    
    }
    
    
    public String getSalaID()
    {
       return salaID;
    }
    
    
    public void setSalaID(String salaID)
    {
      this.salaID=salaID;
    }
    
    public String getBrojSale()
    {
       return brojSale;
    }
    
    public void setBrojSale(String brojSale)
    {
        this.brojSale=brojSale;
    }
}
