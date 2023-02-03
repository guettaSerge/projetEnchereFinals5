/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.example.enchere.model.Category;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Fanjava
 */
@Controller
public class CategorieController {
    
   /* @RequestMapping(value="/regions")
    public ModelAndView formulaireCommune(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("regions");
        mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }*/
    
     @RequestMapping(value="/AjouterCat")
    public ModelAndView ajouterCat(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("AjouterCat");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
     @RequestMapping(value="/AjouterCatController",method=RequestMethod.POST)
    public ModelAndView ajouterCatController(@RequestParam String category){
        ModelAndView mv=new ModelAndView();
        Category categ=new Category();
        categ.setNom(category);
         try {
             categ.insertBase();
         } catch (Exception ex) {
             ex.printStackTrace();
            mv.setViewName("AjouterCat");
            mv.addObject("error",ex.getMessage());
         }
        mv.setViewName("AjouterCat");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    @RequestMapping(value="/ModifierCat")
    public ModelAndView modifierCat(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("ModifierCat");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    
    @RequestMapping(value="/ConfigCategorie")
    public ModelAndView configCategorie(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("ConfigCategorie");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    @RequestMapping(value="/ModificationCatController",method=RequestMethod.POST)
    public ModelAndView modificationCatController(@RequestParam int idCategory,@RequestParam String nom){
        ModelAndView mv=new ModelAndView(); 
        Category categ=new Category();
        categ.setIdCategory(idCategory);
        categ.setNom(nom);
         try {
             ArrayList<Category>rep= new Category().find();
               mv.addObject("category",rep);
             categ.updateBase();
              mv.setViewName("ConfigCategorie");
         } catch (Exception ex) {
              mv.setViewName("ModificationCat");
              ex.printStackTrace();
             Logger.getLogger(CategorieController.class.getName()).log(Level.SEVERE, null, ex);
         }
       
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    @RequestMapping(value="/ModificationCat")
    public ModelAndView modificationCat(){
        ModelAndView mv=new ModelAndView(); 
         try {
             ArrayList<Category>rep= new Category().find();
               mv.addObject("category",rep);
         } catch (Exception ex) {
             Logger.getLogger(CategorieController.class.getName()).log(Level.SEVERE, null, ex);
         }
        mv.setViewName("ModificationCat");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
     @RequestMapping(value="/SupprimerCat")
    public ModelAndView supprimerCat(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("SupprimerCat");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    
    
}