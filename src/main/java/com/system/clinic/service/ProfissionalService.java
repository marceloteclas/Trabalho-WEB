package com.system.clinic.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.system.clinic.dto.ProfissionalDTO;

@Service
public interface ProfissionalService {

    ProfissionalDTO findOne(Long id);
    List<ProfissionalDTO> findAll();
    List<ProfissionalDTO> ConsultarPorProfissional(String profissionalNome);
    List<ProfissionalDTO> listarProfissionalPorEspecialidade(String especialidade);

    ProfissionalDTO save(ProfissionalDTO profissionalDTO);
    void remove(Long id);
}
