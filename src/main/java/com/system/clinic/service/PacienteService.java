package com.system.clinic.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.system.clinic.dto.PacienteDTO;
@Service
public interface PacienteService {

    PacienteDTO findOne(Long idPaciente);
    List<PacienteDTO> findAll();
    List<PacienteDTO> ConsultarPorPaciente(String name);
    List<PacienteDTO> listarPacienteCns(String cns);
    List<PacienteDTO> listarPacientePorBairro(String bairro);
    List<PacienteDTO> listarPacientePorMunicipio(String municipio);
    List<PacienteDTO> listarPacientePorCep(String cep);
    List<PacienteDTO> listarPacientePorSexo(String sexo);

    PacienteDTO save(PacienteDTO pacienteDTO);
    void remove(Long idPaciente);
}


