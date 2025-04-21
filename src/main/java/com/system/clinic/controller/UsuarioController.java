package com.system.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsuarioController {

    @GetMapping("/")
    public String home() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @GetMapping("/cadastro")
    public String cadastro() {
        return "redirect:/cadastro";
    }

    @GetMapping("/teste")
    public String testar() {
        return "teste";
    }

    @PostMapping("/login")
    public String fazerLogin(@RequestParam String usuario, @RequestParam String senha) {

        if ("admin".equals(usuario) && "123".equals(senha)) {
            return "redirect:/menu";
        } else {
            return "redirect:/login?erro=true";
        }
    }
 
}
