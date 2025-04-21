@import com.system.clinic.dto.ProfissionalDTO

@import java.util.List

@param List<ProfissionalDTO> profissionais
@param boolean logado

@template.layout.main(logado = logado, content = @`

    <h2 class="title-page">Profissionais Cadastrados</h2>

    
    <a href="/cadastroProfissional" class="btn-cadastrar">+ Cadastrar Profissional</a>

    <table class="tabela">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Especialidade</th>
            <th>Telefone</th>
            <th>Senha</th>
            <th>Cns</th>
            <th>Cpf</th>
            <th>DataNascimento</th>
            <th>Email</th>
            
            <th>Ações</th>
        </tr>
        </thead>

        <tbody>
        @for(var profissional : profissionais)
            <tr>
                <td>${profissional.getId()}</td>
                <td>${profissional.getNome()}</td>
                <td>${profissional.getEspecialidade()}</td>
                <td>${profissional.getTelefone()}</td>
                <td>${profissional.getSenha()}</td>
                <td>${profissional.getCns()}</td>
                <td>${profissional.getDataNascimento()}</td>
                <td>${profissional.getEmail()}</td>
               
                <td>
                    <a href="/veterinario/editar/${veterinario.getId()}" class="btn-editar">Editar</a>
                </td>
                
            </tr>
        @endfor
        </tbody>
    </table>
`)