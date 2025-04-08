package com.System.clinic.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "consulta")
public class ConsultaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "paciente_id", nullable = false)
    private pacienteEntity paciente;

    @NotBlank
    private String cns;

    @ManyToOne
    @JoinColumn(name = "profissional_id", nullable = false)
    private profissionalEntity profissional;

    @Column(name = "data_consulta", nullable = false)
    @Future(message = "A data deve ser hoje ou no futuro")
    private LocalDate dataConsulta;

    @Column(name = "Especialidade", nullable = false)
    private String especialidade;
    
    @Column(name = "hora_consulta", nullable = false)
    private LocalTime horaConsulta;

    @NotBlank(message = "O motivo da consulta é obrigatório")
    @Column(name = "motivo_consulta", nullable = false)
    private String motivoConsulta;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private StatusConsulta status = StatusConsulta.AGENDADA;
}

enum StatusConsulta {
    AGENDADA,
    CONFIRMADA,
    CANCELADA,
    REALIZADA
}