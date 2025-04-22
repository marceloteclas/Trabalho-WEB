@import com.system.clinic.dto.PacienteDTO
@import com.system.clinic.exception.ValidationErrorDTO
@import java.util.List

<!--@param PacienteDTO paciente = new PacienteDTO()
@param ValidationErrorDTO errors = new ValidationErrorDTO()
@param boolean cadastro = false
@param boolean edicao = false
@param boolean visualizacao = false-->

@template.layout.main(content = @`

    @if (cadastro || edicao)
        <div id="success-box" class="success-box">Paciente ${cadastro ? "cadastrado" : "editado"} com sucesso!</div>
    @endif

    <div class="form-container">

        @if(!visualizacao)
            <h2 class="title-page">${cadastro ? "Cadastrado" : "Edição"} de Paciente</h2>
        @endif

        <form id="formpaciente" method="post" action="/paciente/cadastrar" disabled="${visualizacao}">
            <input type="hidden" id="id" name="id" value="${paciente.getId()}" disabled="${visualizacao}">

            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required value="${paciente.getNome()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("nome"))
                <div class="error-message">${error.message()}</div>
            @endfor


            <label for="nascimento">Nascimento:</label>
            <input type="text" id="nascimento" name="nascimento" value="${paciente.getDataNascimento()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("nascimento"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="cpf">Sexo:</label>
            <input type="number" id="sexo" name="sexo" value="${paciente.getSexo()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("sexo"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="cpf">CPF:</label>
            <input type="number" id="cpf" name="cpf" value="${paciente.getCpf()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("cpf"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="cns">CNS:</label>
            <input type="cns" id="cns" name="cns" value="${paciente.getCns()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("cns"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="telefone">Telefone:</label>
            <input type="telefone" id="telefone" name="telefone" value="${paciente.getTelefone()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("telefone"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="municipio">Município:</label>
            <input type="municipio" id="municipio" name="municipio" value="${paciente.getMunicipio()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("municipio"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="bairro">Bairro:</label>
            <input type="bairro" id="bairro" name="bairro" value="${paciente.getBairro()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("bairro"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${paciente.getEmail()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("email"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <label for="cep">CEP:</label>
            <input type="cep" id="cep" name="cep" value="${paciente.getCEP()}" disabled="${visualizacao}">
            @for(var error : errors.getErrorsByField ("cep"))
                <div class="error-message">${error.message()}</div>
            @endfor

            @if(!visualizacao)
                <button type="submit">Enviar</button>
            @endif
        </form>
    </div>

    @if (visualizacao)
        <div class="paciente-container">
            <h3>Agendamentos do(a) ${paciente.getNome()}</h3>

            <div class="agendamentos-lista">

                <div class="agendamento-card">
                    <div class="agendamento-botoes">
                        <a href="/consulta/${paciente.getId()}" class="btn-editar">Ver Visitas</a>
                        <a href="/consulta/cadastrar/${paciente.getId()}" class="btn-editar">Cadastrar Visita</a>
                    </div>
                </div>

            </div>
        </div>
    @endif

`)