package com.system.clinic.mapping; 

import com.system.clinic.dto.AgendamentoDTO;
import com.system.clinic.entity.AgendamentoEntity;
import com.system.clinic.entity.PacienteEntity;
import com.system.clinic.entity.ProfissionalEntity;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public abstract class AgendamentoMapper {
    
    @Mapping(target = "paciente", expression = "java(mapPaciente(source.getId()))")
    @Mapping(target = "profissional", expression = "java(mapProfissional(source.getId()))")
    public abstract AgendamentoEntity mapToAgendamentoEntity(AgendamentoDTO source);

    @Mapping(target = "pacienteId", source = "paciente.id")
    @Mapping(target = "profissionalId", source = "profissional.id")
    public abstract AgendamentoDTO mapToAgendamentoDTO(AgendamentoEntity source);

    protected PacienteEntity mapPaciente(Long id) {
        PacienteEntity paciente = new PacienteEntity();
        paciente.setId(id);
        return paciente;
    }

    protected ProfissionalEntity mapProfissional(Long id) {
        ProfissionalEntity profissional = new ProfissionalEntity();
        profissional.setId(id);
        return profissional;
    }
}