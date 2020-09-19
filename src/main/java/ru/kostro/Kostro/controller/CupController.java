package ru.kostro.Kostro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.kostro.Kostro.domain.Cup;
import ru.kostro.Kostro.domain.User;
import ru.kostro.Kostro.repos.CupRepo;

import java.io.File;
import java.io.IOException;

import java.util.UUID;


@Controller
public class CupController {
    @Autowired
    private CupRepo cupRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/cup")
    public String home() {
        return "create";
    }

    @PostMapping("/cup")
    public String createCup(
                    @AuthenticationPrincipal User user,
                    @RequestParam String title,
                    @RequestParam String description,
                    @RequestParam("files") MultipartFile[] files,
                    Model model
    ) throws IOException {
        Cup cup = new Cup(title, description, user);
        int l = files.length;
        String[] filenames = new String[l];
        for(int i = 0; i < l; ++i) {
            MultipartFile file = files[i];
            if (file != null && !file.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);


                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + file.getOriginalFilename();
                file.transferTo(new File(uploadPath + "/" + resultFilename));

                filenames[i] = resultFilename;
            }
        }
        cup.setFilename(filenames);

        cupRepo.save(cup);
        Iterable<Cup> cups = cupRepo.findAll();
        model.addAttribute("cups", cups);
        return "redirect:/";
    }

}
