package com.system.clinic.repository;

import com.system.clinic.entity.PacienteEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PacienteRepository  extends JpaRepository<PacienteEntity, Long> {
    List<PacienteEntity> findByNomeContainingIgnoreCase(String nome);
}
