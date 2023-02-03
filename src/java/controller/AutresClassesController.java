/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.example.enchere.model.MouvementEntree;
import com.example.enchere.model.Statistiques;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
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
public class AutresClassesController {

    
     @RequestMapping(value="/Statistiques")
    public ModelAndView statistiques(){
        ModelAndView mv=new ModelAndView();
        Statistiques stat=new  Statistiques();
         try {
             stat.find();
         } catch (Exception ex) {
             Logger.getLogger(AutresClassesController.class.getName()).log(Level.SEVERE, null, ex);
         }
        mv.addObject("stat",stat);
        mv.setViewName("Statistiques");
        return mv;
    }
    
    @RequestMapping(value="/ValidationRecharge")
    public ModelAndView validationRecharge(){
        ModelAndView mv=new ModelAndView();
         try {
             mv.addObject("mouvementEntree",new MouvementEntree().find());
         } catch (Exception ex) {
             Logger.getLogger(AutresClassesController.class.getName()).log(Level.SEVERE, null, ex);
         }
        mv.setViewName("ValidationRecharge");
        return mv;
    }
     @RequestMapping(value="/ValidationRechargeController",method=RequestMethod.POST)
    public ModelAndView  validationRechargeController(@RequestParam int idMouvementEntre,HttpSession session){
        ModelAndView mv=new ModelAndView();
        int idAdmin=(int) session.getAttribute("idAdmin");
        MouvementEntree entree=new MouvementEntree();
        entree.setIdMouvementEntree(idMouvementEntre);
        entree.setIdAdmin(idAdmin);
        
         try {
             entree.updateBase();
              mv.addObject("mouvementEntree",new MouvementEntree().find());
               mv.setViewName("ValidationRecharge");
         } catch (Exception ex) {
             mv.setViewName("Accueil");
             Logger.getLogger(AutresClassesController.class.getName()).log(Level.SEVERE, null, ex);
         } 
       
        return mv;
    }
   
}
