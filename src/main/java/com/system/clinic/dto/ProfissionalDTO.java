package com.system.clinic.dto;

import java.time.LocalDate;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ProfissionalDTO {

    private Long id;

    @NotBlank
    private String name;

    @NotNull
    private LocalDate dataNascimento;

    @NotBlank
    private String especialidade;

    @NotBlank
    private String telefone;

    @NotBlank
    private String senha;

    @NotBlank
    private String cns;

    @NotBlank
    private String cpf;

    @NotNull
    private String email;

}
