@import com.system.clinic.dto.AgendamentoDTO

@import java.util.List

@param List<AgendamentoDTO> agendamentos

@template.layout.main(content = @`

    <h2 class="title-page">Consultas Cadastradas</h2>

    <a href="/marcarAgendamento" class="btn-cadastrar">+ Marcar novo agendamento</a>

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
            @if (agendamentos != null)
                @for(var agendamento : agendamentos)
                    <tr>
                        <td>${agendamento.getId()}</td>
                        <td>${agendamento.getPacienteId()}</td>
                        <td>${agendamento.getProfissionalId()}</td>
                        <td>${agendamento.getDataConsultaFormatada()}</td>
                        <td>${agendamento.getHoraConsultaFormatada()}</td>
                        <td>${agendamento.getMotivoConsulta()}</td>
                        <td>${agendamento.getCns()}</td>
                        <td>${agendamento.getStatusTexto()}</td>
                        <td>
                            <a onclick="return confirm('Tem certeza que deseja apagar o agendamento ${agendamento.getId()}?')"
                                    href="/agendamento/remover/${agendamento.getId()}/${agendamento.getPacienteId()}"
                                    class="btn-excluir">Remover</a>
                        </td>
                    </tr>
                @endfor
            @else
                <tr><td colspan="8">Nenhum atendimento marcado.</td></tr> 
            @endif
        </tbody>
    </table>
`)