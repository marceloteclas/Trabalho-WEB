@import com.system.clinic.dto.PacienteDTO

@import java.util.List

@param List<PacienteDTO> pacientes
@param boolean erroCpf = false

@template.layout.main(content = @`

    <h2 class="title-page">Pacientes Cadastrados</h2>

    <form method="get" action="/paciente" class="form-busca-paciente">
        <label for="nome">CPF:</label>
        <input type="text" id="cpf" name="cpf" pattern="[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}">
        <button type="paciente-submit">Buscar</button>
    </form>

    <a href="/cadastroPaciente" class="btn-cadastrar">+ Cadastrar Paciente</a>

    <table class="tabela">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>DataNascimento</th>
            <th>Sexo</th>
            <th>Cpf</th>
            <th>Email</th>
            <th>Cns</th>
            <th>Telefone</th>
            <th>Municipio</th>
            <th>Cep</th>
            <th>Ações</th>
        </tr>
        </thead>

        <tbody>
        @if(pacientes != null) 
            @for(var paciente : pacientes)
                <tr>
                    <td>${paciente.getId()}</td>
                    <td>${paciente.getNome()}</td>
                    <td>${paciente.getDataNascimentoFormatada()}</td>
                    <td>${paciente.getSexo()}</td>
                    <td>${paciente.getCpf()}</td>
                    <td>${paciente.getEmail()}</td>
                    <td>${paciente.getCns()}</td>
                    <td>${paciente.getTelefone()}</td>
                    <td>${paciente.getMunicipio()}</td>
                    <td>${paciente.getCpf()}</td>
                    <td>
                        <a href="/paciente/editar/${paciente.getId()}" class="btn-editar">Editar</a>
                        <a href="/paciente/ver/${paciente.getId()}" class="btn-editar">Ver</a>
                    </td>
                </tr>
            @endfor
        @else
            <tr><td colspan="8">Nenhum paciente encontrado.</td></tr> 
        @endif
        </tbody>
    </table>
`)