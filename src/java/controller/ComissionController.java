/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.example.enchere.model.Commission;
import java.sql.Date;
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
public class ComissionController {
    
   /* @RequestMapping(value="/regions")
    public ModelAndView formulaireCommune(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("regions");
        mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }*/
    
     @RequestMapping(value="/AjouterComission")
    public ModelAndView ajouterCom(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("AjouterComission");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    
      @RequestMapping(value="/AjouterComissionController",method=RequestMethod.POST)
    public ModelAndView ajouterComissionController(@RequestParam float valeur,@RequestParam Date daty){
        ModelAndView mv=new ModelAndView();
        Commission categ=new Commission();
        categ.setPourcentage(valeur);
         try {
             categ.insertBase();
             mv.setViewName("ConfigComission");
         } catch (Exception ex) {
             ex.printStackTrace();
            mv.setViewName("AjouterComission");
            mv.addObject("error",ex.getMessage());
         }
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    
    @RequestMapping(value="/ListerCommission")
    public ModelAndView listCat(){
        ModelAndView mv=new ModelAndView();
         try {
             mv.addObject("comission",new Commission().find());
         } catch (Exception ex) {
             Logger.getLogger(ComissionController.class.getName()).log(Level.SEVERE, null, ex);
         }
        mv.setViewName("ListerCommission");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }
    
    @RequestMapping(value="/ConfigComission")
    public ModelAndView configComission(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("ConfigComission");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
    }    
}