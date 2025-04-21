package com.system.clinic.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth
                .anyRequest().permitAll() // Libera todas as requisições
            )
            .csrf(csrf -> csrf.disable()) // Desabilita CSRF
            .formLogin(form -> form.disable()) // Desabilita o formulário de login padrão
            .httpBasic(basic -> basic.disable()); // Desabilita autenticação básica

        return http.build();
    }
}