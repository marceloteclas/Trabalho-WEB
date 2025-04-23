package com.system.clinic.dto;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PacienteDTO {

    private Long id;

    @NotBlank
    private String nome;

    @NotNull
    private LocalDate dataNascimento;

    @NotBlank
    private String sexo;

    @NotBlank
    private String telefone;

    @NotNull
    private String municipio;

    @NotNull
    private String bairro;

    @NotBlank
    private String cns;

    @NotBlank
    private String cpf;

    @NotBlank
    private String email;

    @NotBlank
    private String cep;

    public String getDataNascimentoFormatada() {
        return dataNascimento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    }

}
