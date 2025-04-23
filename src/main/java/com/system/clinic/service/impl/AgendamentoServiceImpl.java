package com.system.clinic.service.impl;

import com.system.clinic.dto.AgendamentoDTO;
import com.system.clinic.entity.AgendamentoEntity;
import com.system.clinic.mapping.AgendamentoMapper;
import com.system.clinic.repository.AgendamentoRepository;
import com.system.clinic.service.AgendamentoService;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AgendamentoServiceImpl implements AgendamentoService {

    private final AgendamentoRepository agendamentoRepository;
    private final AgendamentoMapper agendamentoMapper;

    public AgendamentoServiceImpl(AgendamentoRepository agendamentoRepository, AgendamentoMapper agendamentoMapper) {
        this.agendamentoRepository = agendamentoRepository;
        this.agendamentoMapper = agendamentoMapper;
    }

    @Override
    public AgendamentoDTO buscarConsultaPorId(Long idConsulta) {
        Optional<AgendamentoEntity> consulta = agendamentoRepository.findById(idConsulta);
        return consulta.map(agendamentoMapper::mapToAgendamentoDTO).orElse(null);
    }

    @Override
    public List<AgendamentoDTO> listarConsultas() {
        return agendamentoRepository.findAll()
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<AgendamentoDTO> ConsultasPorCns(String pacientecns) {
        return agendamentoRepository.findByCns(pacientecns)
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<AgendamentoDTO> ConsultasPorProfissional(String profissionalNome) {
        return agendamentoRepository.findByProfissional_Nome(profissionalNome)
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<AgendamentoDTO> ConsultasPorData(LocalDate data) {
        return agendamentoRepository.findByDataConsulta(data)
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<AgendamentoDTO> ConsultasPorEspecialidade(String especialidade) {
        return agendamentoRepository.findByEspecialidade(especialidade)
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<AgendamentoDTO> ConsultasPorHora(LocalTime horaConsulta) {
        return agendamentoRepository.findByHoraConsulta(horaConsulta)
                .stream()
                .map(agendamentoMapper::mapToAgendamentoDTO)
                .collect(Collectors.toList());
    }

    @Override
    public AgendamentoDTO save(AgendamentoDTO agendamentoDTO) {
        AgendamentoEntity entity = agendamentoMapper.mapToAgendamentoEntity(agendamentoDTO);
        AgendamentoEntity saved = agendamentoRepository.save(entity);
        return agendamentoMapper.mapToAgendamentoDTO(saved);
    }

    @Override
    public void remove(Long id) {
        agendamentoRepository.deleteById(id);
    }
}
