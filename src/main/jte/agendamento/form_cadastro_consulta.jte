@import com.system.clinic.dto.AgendamentoDTO
@import com.system.clinic.dto.ProfissionalDTO
@import com.system.clinic.exception.ValidationErrorDTO
@import java.util.List

@param AgendamentoDTO agendamento = new AgendamentoDTO()
@param List<ProfissionalDTO> profissionais
@param ValidationErrorDTO errors = new ValidationErrorDTO()
@param Long pacienteId = null
@param boolean logado

@template.layout.main(logado = logado, content = @`

    <button class="btn-cadastrar" onclick="history.back()">Voltar</button>

    <div class="form-container">
        <h2 class="title-page">Cadastro de Consulta</h2>

        <form id="formProfissional" method="post" action="/agendamento/cadastrar">
            <input type="hidden" id="petId" name="petId" value="${petId}">

            <label for="profissional">Especialista:</label>
            <select id="profissional" name="profissionalId" class="styled-select">
                <option value="">Selecione</option>
                @for(var profissional : profissionais)
                    <option value="${profissional.getId()}"
                            selected="${profissional.getId().equals(agendamento.getProfissionalId())}">${profissional.getNome()}</option>
                @endfor
            </select>
            @for(var error : errors.getErrorsByField ("profissional"))
                <div class="error-message">${error.message()}</div>
            @endfor

           <input type="date" name="agendamento" id="agendamento">
            @for(var error : errors.getErrorsByField ("agendamento"))
                <div class="error-message">${error.message()}</div>
            @endfor

            <button type="submit">Cadastrar</button>
        </form>
    </div>
`)