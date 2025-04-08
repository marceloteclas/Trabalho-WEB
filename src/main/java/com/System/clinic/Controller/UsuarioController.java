package com.System.clinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsuarioController {

    @PostMapping("/login")
    public String fazerLogin(@RequestParam String Usuario, @RequestParam String Senha) {

        if ("admin".equals(Usuario) && "123".equals(Senha)) {
            return "redirect:/menu";
        } else {
            return "redirect:/login?erro=true";
        }
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @GetMapping("/cadastro")
    public String cadastro() {
        return "cadastro";
    }
}
