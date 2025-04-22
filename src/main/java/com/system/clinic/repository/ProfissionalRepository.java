package com.system.clinic.repository;

import com.system.clinic.entity.ProfissionalEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProfissionalRepository extends JpaRepository<ProfissionalEntity, Long> {
    List<ProfissionalEntity> findByNomeContainingIgnoreCase(String nome);
    List<ProfissionalEntity> findByEspecialidadeContainingIgnoreCase(String especialidade);
}
