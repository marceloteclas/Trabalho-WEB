<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/css/login.css">

</head>
<body>

    <div class="alinharItem">
      <img src="/assets/img/icon.png" alt="imagemicone">
    </div>

    <div class="login-container">

        <form action="/login" method="post" class="form-section">


            <div class="titulo"> 
                <h1>LOGIN</h1>
                <div class="barra-horizontal"></div>
            </div>   
            
            <div class="espaco-input">
                <label for="Usuario">Usuario*</label>
                <input type="text" id="Usuario" name="Usuario" placeholder="Digite seu Usuario" required /> 
            </div>
        
            <div class="espaco-input">
                <label for="Senha">Senha*</label>
                <input type="password" id="Senha" name="Senha" placeholder="Digite sua senha" required />
            </div>
        
            <div class="lembrar-me">
                <input type="checkbox" id="Lembrar-me"/>
                <label for="Lembrar-me">Lembrar-me</label>
            </div>
        
            <button>Entrar</button>
        
            <p>Não tem cadastro?<a href="/cadastro">Clique aqui!</a></p>

        </form>

        <!-- Imagem -->
        <div class="image-section">
            <div class="alinharSegundaParte">
                <div>
                <h2>Seja Bem-Vindo</h2>
                <img src="/assets/img/imagemLogin.png" alt="Imagem de login">
            </div>
        </div>
    </div>
    </div>
</body>
</html>

