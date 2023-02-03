/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Fanjava
 */
@Controller
public class AccueilController {
    
   /* @RequestMapping(value="/regions")
    public ModelAndView formulaireCommune(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("regions");
        mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }*/
    
     @RequestMapping(value="/Accueil")
    public ModelAndView Accueil(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("Accueil");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
        
    }
}

