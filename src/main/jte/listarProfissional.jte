<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar Profissionais </title>
    <link rel="stylesheet" href="/css/listarProfissional.css">
</head>

<body>
    <div class="icon-top">
        <img src="/assets/img/icon.png" alt="">
    </div>
    <div class="icon-right">
        <img src="/assets/img/lista.png" alt="">
    </div>
    <header>
    <div class="title">PROFISSIONAIS DA CLÍNICA</div>
    </header>
    <div class="profissionais-container">
        <h2 class="title2">Profissionais Cadastrados</h2>
        <!-- Tabela de profissionais -->
      <table>
        <thead>
            <tr>
                <th>Nome do Funcionário</th>
                <th>Especialidade</th>
                <th>Telefone</th>
                <th>E-mail</th>      
            </tr>
            <tr>
                <td>Dr. Carlos Souza</td>
                <td>Ortopedia</td>
                <td>(11) 5555-4444</td>
                <td>carlos.souza@clinica.com</td>
            </tr>
        </thead>
      </table>
      </div>
      <div class="botoes-container">
        <button class="btn" onclick="editarProfissional()">Editar Profissional</button>
        <button class="btn" onclick="excluirProfissional()">Excluir Profissional</button>
        
    </div>
    <div class="button1">
                <input type="button" value="Voltar" onclick="window.location.href='/menu'">
        </div>
</body>
</html>