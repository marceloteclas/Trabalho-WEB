package com.System.clinic.service;

import com.System.clinic.Dto.ConsultaDTO;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ConsultaService {

ConsultaDTO buscarConsultaPorId(Long idConsulta);
List<ConsultaDTO> listarConsultas();
List<ConsultaDTO> ConsultasPorCns(String pacientecns);
List<ConsultaDTO> ConsultasPorProfissional(String profissionalNome);
List<ConsultaDTO> ConsultasPorData(LocalDate data);
List<ConsultaDTO> ConsultasPorEspecialidade(String especialidade);
List<ConsultaDTO> ConsultasPorHora(LocalTime horaConsulta);

ConsultaDTO save(ConsultaDTO consultaDTO);
void remove(Long idConsulta);




}