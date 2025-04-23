package com.system.clinic.service.impl;

import com.system.clinic.dto.PacienteDTO;
import com.system.clinic.service.PacienteService;
import com.system.clinic.entity.PacienteEntity;
import com.system.clinic.repository.PacienteRepository;
import com.system.clinic.mapping.PacienteMapper;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class PacienteServiceImpl  implements  PacienteService{

    private final PacienteRepository pacienteRepository;
    private final PacienteMapper pacienteMapper;

    public PacienteServiceImpl(PacienteRepository pacienteRepository,
    PacienteMapper pacienteMapper) {
        this.pacienteRepository = pacienteRepository;
        this.pacienteMapper = pacienteMapper;
    }

    @Override
    public PacienteDTO findOne(Long id) {
        Optional<PacienteEntity> paciente = pacienteRepository.findById(id);
        return paciente.map(pacienteMapper::toDto).orElse(null);
    }

    @Override
    public List<PacienteDTO> findAll() {
        return pacienteRepository.findAll()
                .stream()
                .map(pacienteMapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<PacienteDTO> ConsultarPorPaciente(String pacienteNome) {
        return pacienteRepository.findByNomeContainingIgnoreCase(pacienteNome)
                .stream()
                .map(pacienteMapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public PacienteDTO save(PacienteDTO pacienteDTO) {
        PacienteEntity paciente = pacienteMapper.toEntity(pacienteDTO);
        PacienteEntity salvo = pacienteRepository.save(paciente);
        return pacienteMapper.toDto(salvo);
    }

    @Override
    public void remove(Long id) {
        pacienteRepository.deleteById(id);
    }
}
