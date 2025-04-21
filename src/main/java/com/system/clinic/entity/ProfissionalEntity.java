package  com.system.clinic.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
@Table(name="profissional")
public class ProfissionalEntity {
    
    public ProfissionalEntity() {
        // Construtor padrão necessário para frameworks e instância manual
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank
    @Column(nullable=false)
    private String nome;

    @Column(name="especialidade",nullable = false)
    private String especialidade;

    @NotBlank
    @Column(length = 10)
    private String telefone;

    @NotBlank
    @Column(name="senha",nullable = false)
    private String senha;

    @Column(name="cns",nullable = false)
    private int cns;
        @Pattern(regexp = "\\d{11}")
        @Column(nullable = false, length = 11)
        private String cpf;

    @Column(name="data_nascimento",nullable = false)
    private String dataNascimento;

    @Email
    @Column(name = "email", nullable = false)
    private String email;
}
