package com.system.clinic.dto;

import jakarta.validation.constraints.*;
import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;

import com.system.clinic.entity.StatusAgendamento.Status;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AgendamentoDTO {

    private Long id;

    @NotNull(message = "ID do paciente é obrigatório")
    private Long pacienteId;

    @NotNull(message = "ID do profissional é obrigatório")
    private Long profissionalId;

    @NotBlank
    private String especialidade;

    @Future(message = "A data deve ser hoje ou no futuro")
    private LocalDate dataConsulta;

    @NotBlank
    private LocalTime horaConsulta;

    @NotBlank
    private String motivoConsulta;

    @NotBlank
    @Pattern(regexp = "\\d{15}", message = "CNS deve conter 15 dígitos")
    private String cns;

    private Status status;
}
