package com.System.clinic.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.System.clinic.Dto.PacientelDTO;
@Service
public interface PacienteService {

    PacientelDTO findOne(Long idPaciente);
    List<PacientelDTO> findAll();
    List<PacientelDTO> ConsultarPorPaciente(String name);
    List<PacientelDTO> listarPacienteCns(String cns);
    List<PacientelDTO> listarPacientePorBairro(String bairro);
    List<PacientelDTO> listarPacientePorMunicipio(String municipio);
    List<PacientelDTO> listarPacientePorCep(String cep);
    List<PacientelDTO> listarPacientePorSexo(String sexo);

    PacientelDTO save(PacientelDTO pacienteDTO);
    void remove(Long idPaciente);
}


