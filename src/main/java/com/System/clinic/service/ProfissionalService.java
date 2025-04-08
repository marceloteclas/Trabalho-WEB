package com.System.clinic.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.System.clinic.Dto.ProfissionalDTO;

@Service
public interface ProfissionalService {

    ProfissionalDTO findOne(Long idProfissional);
    List<ProfissionalDTO> findAll();
    List<ProfissionalDTO> ConsultarPorProfissional(String profissionalNome);
    List<ProfissionalDTO> listarProfissionalPorEspecialidade(String especialidade);

    ProfissionalDTO save(ProfissionalDTO profissionalDTO);
    void remove(Long idProfissional);
}
