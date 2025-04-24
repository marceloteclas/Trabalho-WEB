<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar Agendamentos</title>
    <link rel="stylesheet" href="/css/listarAgendamento.css">
<link rel="icon" type="image/x-icon" href="/favicon.ico">
</head>
<body>
    <div class="icon-top">
        <img src="/img/icon.png" alt="">  
    </div>
    <div class="icon-right">
        <img src="/img/lista.png" alt="">
    </div>

    <header>
        <div class="title">HISTÓRICO DE AGENDAMENTOS</div>
    </header>

    <main>
        <div class="agendamentos-container">
            <h2>Agendamentos Marcados</h2>
            <ul id="lista-agendamentos">
                <table>
                    <thead>
                        <tr>
                            <th>Número do CNS</th>
                            <th>Nome do paciente</th>
                            <th>Telefone</th>
                            <th>Nome do médico</th>
                            <th>Especialidade</th>
                            <th>Data da consulta</th>   
                            <th>Horário da consulta</th> 
                            <th>Motivo da consulta</th>        
                        </tr>
                        <tr>
                            <td>40028922</td>
                            <td>Elon Musk</td>
                            <td>(11) 5555-4444</td>
                            <td>Dr. Carlos Souza</td>
                            <td>Ortopedia</td>
                            <td>20/03/25</td>
                            <td>14:00</td>
                            <td>Dores nas costas</td>
                        </tr>
                    </thead>
                </table>
            </ul>

            <div class="botoes-container">
                <button class="btn" onclick="editarProfissional()">Editar Profissional</button>
                <button class="btn" onclick="excluirProfissional()">Excluir Profissional</button>
            </div>
        </div> 

        <div class="form-container">
            <label for="numero-sus">Número do CNS:</label>
            <input type="text" id="numero-sus" placeholder="Digite o número do CNS">

            <label for="paciente-nome">Paciente:</label>
            <input type="text" id="paciente-nome" placeholder="Nome do paciente">

            <label for="telefone">Telefone:</label>
            <input type="tel" id="telefone" placeholder="(00) 00000-0000">

            <label for="medico-nome">Médico:</label>
            <input type="text" id="medico-nome" placeholder="Nome do médico">

            <label for="especialidade">Especialidade:</label>
            <select id="especialidade" name="especialidade">
                <option value="vaizo"></option>
                <option value="cardiologia">Cardiologia</option>
                <option value="dermatologia">Dermatologia</option>
                <option value="ortopedia">Ortopedia</option>
                <option value="pediatria">Pediatria</option>
            </select> 

            <label for="data">Data:</label>
            <input type="date" id="data">

            <label for="horario">Horário:</label>
            <input type="time" id="horario">

            <label for="motivo">Motivo da Consulta:</label>
            <textarea id="motivo" name="motivo" rows="3" placeholder="Descreva o motivo da consulta"></textarea>

            <button class="btn" onclick="adicionarAgendamento()">Adicionar Consulta</button>
            <div class="button1">
                 <input type="button" value="Voltar" onclick="window.location.href='/home'">
            </div>
        </div> 
        
    </main>
    

    <script>
        function adicionarAgendamento() {
            alert("Função de adicionar consulta ainda não implementada!");
        }

        function editarAgendamento() {
            alert("Função de editar consulta ainda não implementada!");
        }

        function excluirAgendamento() {
            alert("Função de excluir consulta ainda não implementada!");
        }
    </script>
</body>
</html>

