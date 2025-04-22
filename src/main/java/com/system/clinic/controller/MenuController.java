package com.system.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {

    @GetMapping("/menu")
    public String mostrarMenu() {
        return "index";
    }

    @GetMapping("/agendamento")
    public String agendamento() {
        return "agendamento/form_cadastro_consulta";
    }

    @GetMapping("/listarAgendamento")
    public String listarAgendamento() {
        return "agendamento/lista_consultas";
    }
}
