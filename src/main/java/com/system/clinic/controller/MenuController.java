package com.system.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {

    @GetMapping("/menu")
    public String mostrarMenu() {
        return "index"; // JTE procura automaticamente por home.jte
    }

    @GetMapping("/cadastroPessoa")
    public String cadastroPessoa() {
        return "cadastroPessoa";
    }

    @GetMapping("/cadastroProfissional")
    public String cadastroProfissional() {
        return "cadastroProfissional";
    }

    @GetMapping("/agendamento")
    public String agendamento() {
        return "agendamento";
    }

    @GetMapping("/listarAgendamento")
    public String listarAgendamento() {
        return "listarAgendamento";
    }

    @GetMapping("/listarProfissional")
    public String listarProfissional() {
        return "listarProfissional";
    }

}
