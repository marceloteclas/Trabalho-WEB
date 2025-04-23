@template.layout.main(content = @`
    
    <main>
        <div class="profissional-container">
            
            <div class="profissional-form-img">
                <img class="img1" src="assets/img/Phisiotherapy-amico 1.png" alt="">
            </div>

            <form>
                <div class="profissional-grid-container">
                    <h2>Cadastro de Funcionários</h2>
                    <div class="form-group">
                        <label>Nome Completo:</label>
                        <input type="text" id="nome" name="nome" placeholder="Digite seu nome completo">
                    </div>
                    <div class="form-group">
                        <label for="data-nasc">Data de Nascimento:</label>
                        <input type="date" id="data-nasc" name="data-nasc">
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail:</label>
                        <input type="email" id="email" name="email" placeholder="seu@email.com">
                    </div>
                    <div class="form-group">
                        <label for="senha">Senha:</label>
                        <input type="password" id="senha" name="senha" placeholder="Crie uma senha segura">
                    </div>
                    <div class="form-group">
                        <label for="cpf">CPF:</label>
                    <input type="text" id="cpf" name="cpf" placeholder="000.000.000-00" maxlength="14">
                    </div>
                    <div class="form-group">
                        <label for="cns">Número do CNS:</label>
                        <input type="text" id="cns" name="cns" placeholder="0000 0000 0000">
                    </div>
                    <div class="form-group">
                        <label for="tel">Telefone:</label>
                        <input type="tel" id="tel" name="tel" placeholder="(00) 00000-0000">
                    </div>
                    <div class="form-group">
                        <label>Bairro</label>
                        <input type="text" placeholder="Digite seu nome">
                    </div>
                    <div class="form-group">
                        <label>Telefone</label>
                        <input type="tel" placeholder="Digite seu Telefone">
                    </div>
                    
                    <div class="form-group">
                        <label for="especialidade">Especialidade:</label>
                        
                        <select name="especialidade" id="especialidade">
                            <option value="" disabled selected>Selecione sua especialidade</option>
                            <option value="clinico">Clínico(a) Geral</option>
                            <option value="cardiologista">Cardiologista</option>
                            <option value="pediatra">Pediatra</option>
                            <option value="psiquiatra">Psiquiatra</option>
                        </select>
                    </div>

                    <div class="login-btn">
                        <p>Usuário já cadastrado? <a href="/login">Faça login</a></p>   
                    </div>
                    <div class="form-group">
                        <input type="button" class="cancel-btn" value="Voltar" onclick="window.location.href='/listarProfissional'">
                    </div>
                    <input type="submit" class="save-btn" value="Cadastrar">
                </div>
            </form>
        </div>
    </main>  
`)