package com.System.clinic.Dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserDTO {

    @NotBlank(message = "Não pode ser vazio")
    @Size(min = 6, max = 50)
    private String name;

    @NotBlank
    @Email
    private String email;

}
