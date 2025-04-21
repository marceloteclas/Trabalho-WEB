@import om.system.clinic.dto.AgendamentoDTO

@import java.util.List

@param List<AgendamentoDTO> agendamentos
@param boolean logado

@template.layout.main(logado = logado, content = @`

    <h2 class="title-page">Consultas Cadastradas</h2>

    <table class="tabela">
        <thead>
        <tr>
            <th>ID</th>
            <th>PacienteId</th>
            <th>ProfissionalId</th>
            <th>Especialidade</th>
            <th>DataConsulta</th>
            <th>HoraConsulta</th>
            <th>MotivoConsulta</th>
            <th>Ações</th>
        </tr>
        </thead>

        <tbody>
        @for(var agendamento : agendamentos)
            <tr>
                <td>${agendamento.getId()}</td>
                <td>${consulta.getPet().getNome()}</td>
                <td>${consulta.getVeterinario().getNome()}</td>
                <td>${consulta.getAgendamentoFormatado()}</td>
                <td>
                    <a onclick="return confirm('Tem certeza que deseja apagar consulta ${consulta.getId()}?')"
                            href="/consulta/remover/${consulta.getId()}/${consulta.getPet().getId()}"
                            class="btn-excluir">Remover</a>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>
`)