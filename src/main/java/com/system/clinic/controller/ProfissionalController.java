package com.system.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.ui.Model;
import java.util.List;


import com.system.clinic.dto.ProfissionalDTO;
import com.system.clinic.service.ProfissionalService;

@Controller
public class ProfissionalController {

    private final ProfissionalService profissionalService;

    public ProfissionalController(ProfissionalService profissionalService) {
        this.profissionalService = profissionalService;
    }

    @GetMapping("/listarProfissional")
    public String listarProfissional(Model model) {
        List<ProfissionalDTO> profissionais = profissionalService.findAll(); // ou o método que você tiver
        model.addAttribute("profissionais", profissionais);
        return "profissional/lista_profissionais";
    }

}
