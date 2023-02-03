/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.enchere.model;

import com.example.enchere.dao.AccessBase;
import com.example.enchere.dao.Attribute;
import com.example.enchere.dao.TableName;
import java.util.ArrayList;



/**
 *
 * @author pc
 */
@TableName(table = "Client",view="9")   

public class Client extends AccessBase{
   @Attribute(attrName = "idClient", attrType = "", idPrimaryKey = "yes")
    private Integer idClient;
    @Attribute(attrName = "nom", attrType = "", idPrimaryKey = "")
    private String nom;
    @Attribute(attrName = "email", attrType = "", idPrimaryKey = "")
    private String email;
    @Attribute(attrName = "passe", attrType = "", idPrimaryKey = "")
    private String passe;

    public Integer getIdClient() {
        return idClient;
    }

    public void setIdClient(Integer idClient) {
        this.idClient = idClient;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasse() {
        return passe;
    }

    public void setPasse(String passe) {
        this.passe = passe;
    }
    public static void main(String[] args) throws Exception{
        Client ench=new Client();
        ArrayList<Client> enchere=ench.find();
        System.out.println("ok");
        
        Client c=new Client();
        c.setNom("sdfef");
        c.setEmail("sdfdf");
        c.setPasse("dfdf");
        c.insertBase();
    }
}
