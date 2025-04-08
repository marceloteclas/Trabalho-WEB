package com.System.clinic.entity;


import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Past;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "paciente")
public class pacienteEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  
    private Long id;

    @NotBlank
    @Column(nullable = false)
    private String nome;

    @Past
    @Column(name = "data_nascimento", nullable = false)
    private LocalDate dataNascimento;

    @NotBlank
    @Column(nullable = false)
    private String sexo;

    @Pattern(regexp = "\\d{11}")
    @Column(nullable = false, length = 11)
    private String cpf;

    @Email
    @Column(nullable = false)
    private String email;

    @NotBlank
    @Column(length = 15)
    private String cns;

    @NotBlank
    @Column(length = 10 )
    private String telefone;

    @NotBlank
    private String municipio;

    @NotBlank
    private String bairro;

    @Pattern(regexp = "\\d{8}")
    @Column(length = 8)
    private String cep;
}