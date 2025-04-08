<!DOCTYPE html>
<<<<<<< HEAD
<html lang="pt">
<head>    
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/cadastroProfissional.css">
    <link rel="icon" type="image/x-icon" href="/favicon.ico">

    <title>Cadastro de Profissional</title>
</head>
<body>
    <main>
    <div class="container">
        <div class="form-img">
            <img class="img1" src="assets/img/Phisiotherapy-amico 1.png" alt="">
        </div>

            <div class="form-container">
                <h1 class="title">Cadastre-se</h1>
                
                <form action="#" class="formulario">
                    <label for="nome">Nome Completo:</label>
                    <input type="text" id="nome" name="nome" placeholder="Digite seu nome completo">
                    
                    <label for="data-nasc">Data de Nascimento:</label>
                    <input type="date" id="data-nasc" name="data-nasc">
                    
                    <label for="email">E-mail:</label>
                    <input type="email" id="email" name="email" placeholder="seu@email.com">
                    
                    <label for="senha">Senha:</label>
                    <input type="password" id="senha" name="senha" placeholder="Crie uma senha segura">
                    
                    <label for="cpf">CPF:</label>
                    <input type="text" id="cpf" name="cpf" placeholder="000.000.000-00" maxlength="14">
                    
                    <label for="cns">Número do CNS:</label>
                    <input type="text" id="cns" name="cns" placeholder="0000 0000 0000">
                    
                    <label for="tel">Telefone:</label>
                    <input type="tel" id="tel" name="tel" placeholder="(00) 00000-0000">
                    
                    <label for="especialidade">Especialidade:</label>
                    <select name="especialidade" id="especialidade">
                        <option value="" disabled selected>Selecione sua especialidade</option>
                        <option value="clinico">Clínico(a) Geral</option>
                        <option value="cardiologista">Cardiologista</option>
                        <option value="pediatra">Pediatra</option>
                        <option value="psiquiatra">Psiquiatra</option>
                    </select>
                    <p>Usuário já cadastrado?<a href="/login">Faça login</a></p>
                    

                    <div class="buttons-container">
                        <input type="button" class="btn-voltar" value="Voltar" onclick="window.location.href='/menu'">
                        <input type="submit" class="btn-cadastrar" value="Cadastrar">
           </div>
                </form>
            </div>
        </div>
    </main>  
=======
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/cadastroProfissional.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Profissional</title>
</head>
<body>
    <div class="container">
        <div class="form-img">
            <img src="/assets/img/Phisiotherapy-amico 1.png" alt="">
        </div>

        <div class="form">
            
            <div class="title">
                <h1>Cadastre-se</h1>
                <button class="btn-entrar"><a href="login.html">Entrar</a></button>
                <div class="barra"></div>
            </div>

            <form action="#" class="formulario">
                <div class="form-inputs">
                    <label for="nome">
                        Digite seu nome:
                    </label>
                    <input type="text" id="nome" name="nome" placeholder="nome">
                </div>

                <div class="form-inputs">
                    <label for="data-nasc">
                        Digite sua data de nascimento:
                    </label>
                    <input type="date" id="data-nasc" name="data-nasc" placeholder="00/00/0000">
                </div>

                <div class="form-inputs">
                    <label for="email">
                        Digite seu email:
                    </label>
                    <input type="email" id="email" name="email" placeholder="seu@email.com">
                </div>

                <div class="form-inputs">
                    <label for="senha">
                        Digite seu senha:
                    </label>
                    <input type="password" id="senha" name="senha" placeholder="***********">
                </div>

                <div class="form-inputs">
                    <label for="cpf">
                        Digite seu CPF:
                    </label>
                    <input type="number" id="cpf" name="cpf" placeholder="000.000.000-00">
                </div>

                <div class="form-inputs">
                    <label for="cns">
                        Digite seu CNS:
                    </label>
                    <input type="text" id="cns" name="cns" placeholder="0000-000-000">
                </div>

                <div class="form-inputs">
                    <label for="tel">
                        Digite seu número:
                    </label>
                    <input type="tel" id="senha" name="senha" placeholder="(++) xxxx-xxxx">
                </div>

                <div class="form-inputs">
                    <label for="especialidade">
                        Digite sua especialidade:
                    </label>
                    <select name="especialidade" id="especialidade">
                        <option value="opcao">
                            Clínico(a) Geral
                        </option>
                        <option value="opcao">
                            Cardiologista
                        </option>
                        <option value="opcao">
                            Pediatra
                        </option>
                        <option value="opcao">
                            Psquitra
                        </option>
                    </select>
                </div>
                <button class="btn-cadastro">
                    Cadastrar
                </button>
            </form>
             <div class="button1">
                 <input type="button" value="Voltar" onclick="window.location.href='/menu'">
            </div>
        </div>
      
    </div>
    
>>>>>>> 90044438d3d453fdea9177c8b73385a9af24d4ac
</body>
</html>