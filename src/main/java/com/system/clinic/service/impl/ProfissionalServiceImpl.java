package com.system.clinic.service.impl;

import com.system.clinic.dto.ProfissionalDTO;
import com.system.clinic.service.ProfissionalService;
import com.system.clinic.entity.ProfissionalEntity;
import com.system.clinic.repository.ProfissionalRepository;
import com.system.clinic.mapping.ProfissionalMapper;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProfissionalServiceImpl implements ProfissionalService {

    private final ProfissionalRepository profissionalRepository;
    private final ProfissionalMapper profissionalMapper;

    public ProfissionalServiceImpl(ProfissionalRepository profissionalRepository,
                                   ProfissionalMapper profissionalMapper) {
        this.profissionalRepository = profissionalRepository;
        this.profissionalMapper = profissionalMapper;
    }

    @Override
    public ProfissionalDTO findOne(Long id) {
        Optional<ProfissionalEntity> profissional = profissionalRepository.findById(id);
        return profissional.map(profissionalMapper::toDto).orElse(null);
    }

    @Override
    public List<ProfissionalDTO> findAll() {
        return profissionalRepository.findAll()
                .stream()
                .map(profissionalMapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<ProfissionalDTO> ConsultarPorProfissional(String profissionalNome) {
        return profissionalRepository.findByNomeContainingIgnoreCase(profissionalNome)
                .stream()
                .map(profissionalMapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<ProfissionalDTO> listarProfissionalPorEspecialidade(String especialidade) {
        return profissionalRepository.findByEspecialidadeContainingIgnoreCase(especialidade)
                .stream()
                .map(profissionalMapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public ProfissionalDTO save(ProfissionalDTO profissionalDTO) {
        ProfissionalEntity profissional = profissionalMapper.toEntity(profissionalDTO);
        ProfissionalEntity salvo = profissionalRepository.save(profissional);
        return profissionalMapper.toDto(salvo);
    }

    @Override
    public void remove(Long id) {
        profissionalRepository.deleteById(id);
    }
}
