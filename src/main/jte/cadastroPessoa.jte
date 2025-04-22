<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Paciente</title>
    <link rel="stylesheet" href="/css/cadastroPessoa.css">
<link rel="icon" type="image/x-icon" href="/favicon.ico">
</head>
<body>

    <div class="alinharItem">
        <img src="/img/icon.png" alt="Imagem Ícone">
    </div>
    
    <div class="container">
        <div class="title">Registro de Paciente</div>
        <form action="#">
            <div class="user-details">
                <div class="input-box">
                    <label class="details">Nome</label>
                    <input type="text" placeholder="Digite seu Nome" required> 
                </div>

                <div class="input-box">
                    <label class="details">Nascimento</label>
                    <input type="date" required> 
                </div>

                <div class="input-box">
                    <label class="details">Sexo</label>
                    <select required>
                        <option value="" disabled selected>Selecione</option>
                        <option value="Masculino">Masculino</option>
                        <option value="Feminino">Feminino</option>
                        <option value="Outro">Outro</option>
                    </select>
                </div>

                <div class="input-box">
                    <label class="details">CPF</label>
                    <input type="text" id="cpf" name="cpf" placeholder="000.000.000-00" maxlength="14" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" required>
                </div>

                <div class="input-box">
                    <label class="details">CNS</label>
                    <input type="text" placeholder="Digite seu CNS" required> 
                </div>

                <div class="input-box">
                    <label class="details">Telefone</label>
                    <input type="text" placeholder="Digite seu Telefone" required> 
                </div>

                <div class="input-box">
                    <label class="details">Município</label>
                    <input type="text" placeholder="Digite seu Município" required> 
                </div>

                <div class="input-box">
                    <label class="details">Bairro</label>
                    <input type="text" placeholder="Digite seu Bairro" required> 
                </div>

                <div class="input-box">
                    <label class="details">E-mail</label>
                    <input type="email" placeholder="Digite seu E-mail" required> 
                </div>

                <div class="input-box cep-box">
                    <label for="cep">CEP</label>
                    <div class="cep-container">
                        <input type="text" id="cep" name="cep" placeholder="Digite seu CEP" maxlength="8" pattern="\d{8}" required>
                        <button type="button" class="search-cep">Pesquisar</button>
                    </div>
                </div>
            </div>

            <div class="button">
                <input type="submit" value="Salvar">
            </div>

            <div class="button1">
                 <input type="button" value="Voltar" onclick="window.location.href='/home'">
            </div>
        </form>
    </div>
    
</body>
</html>

   
 