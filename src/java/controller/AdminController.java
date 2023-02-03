/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.example.enchere.model.Admin;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author P14A-Serge
 */
@Controller
public class AdminController {
      @RequestMapping(value="/Index")
    public ModelAndView Accueil(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("index");
        //mv.addObject("regions",dao.findAll(Region.class));
        return mv;
        
    }
     @RequestMapping(value="/VerificationEmailPasse")
    public ModelAndView ajouterCom(@RequestParam String email,@RequestParam String passe,HttpSession session){
        ModelAndView mv=new ModelAndView();
        
        Admin ad=new Admin();
         try {
            ad.setPasse(passe);
            ad.setEmail(email);
            ad=ad.verification();
            session.setAttribute("idAdmin",ad.getIdAdmin());
            mv.setViewName("Accueil");
            
         } catch (Exception ex) {
             mv.addObject("error",ex.getMessage());
             mv.setViewName("index");
             Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
         }
        return mv;
    }

}