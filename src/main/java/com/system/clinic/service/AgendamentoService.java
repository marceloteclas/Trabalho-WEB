package com.system.clinic.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.stereotype.Service;

import com.system.clinic.dto.AgendamentoDTO;

@Service
public interface AgendamentoService {

AgendamentoDTO buscarConsultaPorId(Long idConsulta);
List<AgendamentoDTO> listarConsultas();
List<AgendamentoDTO> ConsultasPorCns(String pacientecns);
List<AgendamentoDTO> ConsultasPorProfissional(String profissionalNome);
List<AgendamentoDTO> ConsultasPorData(LocalDate data);
List<AgendamentoDTO> ConsultasPorEspecialidade(String especialidade);
List<AgendamentoDTO> ConsultasPorHora(LocalTime horaConsulta);

AgendamentoDTO save(AgendamentoDTO consultaDTO);
void remove(Long idConsulta);




}