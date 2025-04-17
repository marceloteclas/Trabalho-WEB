package com.system.clinic.mapping;

import com.system.clinic.entity.PacienteEntity;
import com.system.clinic.dto.PacienteDTO;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public abstract class PacienteMapper {
    public abstract PacienteEntity toEntity(PacienteDTO source);
    public abstract PacienteDTO tDto(PacienteEntity source);
}
