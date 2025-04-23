package com.system.clinic.controller;

import com.system.clinic.dto.AgendamentoDTO;
import com.system.clinic.service.AgendamentoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AgendamentoController {

    private final AgendamentoService agendamentoService;

    public AgendamentoController(AgendamentoService agendamentoService) {
        this.agendamentoService = agendamentoService;
    }

    @GetMapping("/listarAgendamentos")
    public String listarAgendamentos(Model model) {
        List<AgendamentoDTO> agendamentos = agendamentoService.listarConsultas();
        model.addAttribute("agendamentos", agendamentos);
        return "agendamento/lista_agendamentos";
    }

    @GetMapping("/marcarAgendamento")
    public String marcarAgendamento() {
        return "agendamento/marcar_agendamento";
    }
}