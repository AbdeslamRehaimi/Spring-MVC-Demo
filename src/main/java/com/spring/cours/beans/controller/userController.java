package com.spring.cours.beans.controller;

import com.spring.cours.beans.entities.Utilisateur;
import com.spring.cours.beans.service.utilisateurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class userController {

    private utilisateurService utilisateurService;

    @Autowired(required = true)
    public void setUtilisateurService(utilisateurService utilisateurService) {
        this.utilisateurService = utilisateurService;
    }

    @GetMapping("/list")
    public String lisUtilisateur(Model model){
       List<Utilisateur> utilisateurs = utilisateurService.getAllUtilisateur();
        model.addAttribute("utilisateur", utilisateurs);
        System.out.println("_____________________Reached_______________________");
        return "list-users";
    }


    @GetMapping("/ajoute")
    public String ajouteForm(Model model){
        Utilisateur utilisateur = new Utilisateur();
        model.addAttribute("utilisateur", utilisateur);
        return "user/ajoute";
    }

    @GetMapping("/save")
    public String saveUser(@Valid @ModelAttribute("utilisateur") Utilisateur utilisateur, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "user/ajoute";
        }
        utilisateurService.ajouteUtilisateur(utilisateur);
        return "redirect:/user/list";
    }

    @GetMapping("/update")
    public String updateUser(@RequestParam("ID_U") int id, Model model){
        Utilisateur utilisateur = utilisateurService.getUtilisateur(id);
        model.addAttribute("utilisateur", utilisateur);
        return "user/ajoute";
    }

    @GetMapping("/delete")
    public String deleteUser(@RequestParam("ID_U") int id){
        utilisateurService.deleteUtilisateur(id);
        return "redirect:/user/list-users";
    }

}
