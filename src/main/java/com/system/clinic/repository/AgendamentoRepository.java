package com.system.clinic.repository;

import com.system.clinic.entity.AgendamentoEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Repository
public interface AgendamentoRepository extends JpaRepository<AgendamentoEntity, Long> {

    List<AgendamentoEntity> findByCns(String cns);

    List<AgendamentoEntity> findByProfissional_Nome(String nome);

    // List<AgendamentoEntity> findByProfissional_Nome(String nome);

    List<AgendamentoEntity> findByDataConsulta(LocalDate dataConsulta);

    List<AgendamentoEntity> findByEspecialidade(String especialidade);

    List<AgendamentoEntity> findByHoraConsulta(LocalTime horaConsulta);
}
