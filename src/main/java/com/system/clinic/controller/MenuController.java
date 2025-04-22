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
        return "paciente/form_cadastro_paciente";
    }

    @GetMapping("/listarPessoa")
    public String listarPessoa() {
        return "paciente/lista_pacientes";
    }

    @GetMapping("/cadastroProfissional")
    public String cadastroProfissional() {
        return "profissional/cadastroProfissional";
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
