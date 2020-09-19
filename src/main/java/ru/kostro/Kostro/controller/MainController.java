package ru.kostro.Kostro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.kostro.Kostro.domain.Cup;
import ru.kostro.Kostro.repos.CupRepo;

@Controller
public class MainController {
    @Autowired
    private CupRepo cupRepo;

    @GetMapping("/")
    public String home(Model model) {
        Iterable<Cup> cups  = cupRepo.findAll();
        model.addAttribute("cups", cups);
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
