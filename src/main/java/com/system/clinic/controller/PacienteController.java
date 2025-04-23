package com.system.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.ui.Model;
import java.util.List;

import com.system.clinic.dto.PacienteDTO;
import com.system.clinic.service.PacienteService;

@Controller
public class PacienteController {

    private final PacienteService pacienteService;

    public PacienteController(PacienteService pacienteService) {
        this.pacienteService = pacienteService;
    }

    @GetMapping("/listarPaciente")
    public String listarPaciente(Model model) {
        List<PacienteDTO> pacientes = pacienteService.findAll();
        model.addAttribute("pacientes", pacientes);
        return "paciente/lista_pacientes";
    }

    @GetMapping("/cadastroPaciente")
    public String cadastroPaciente() {
        return "paciente/cadastroPaciente";
    }
}
