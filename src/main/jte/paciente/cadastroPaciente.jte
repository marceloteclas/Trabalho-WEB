@template.layout.main(content = @`
    <main>
        <div class="paciente-container">
            <header class="canto">
            <div class="alinharItem">
                <img src="/assets/img/icon.png" alt="Imagem Ícone">
            </div>
            </header>
            <form>
                <div class="paciente-grid-container">
                    <h2>Registro de Paciente</h2>
                    <div class="form-group">
                        <label class="details">Nome</label>
                        <input type="text" placeholder="Digite seu Nome" required> 
                    </div>

                    <div class="form-group">
                        <label class="details">Nascimento</label>
                        <input type="date" required> 
                    </div>

                        <div class="form-group">
                            <label class="details">Sexo</label>
                            <select required>
                                <option value="" disabled selected>Selecione</option>
                                <option value="Masculino">Masculino</option>
                                <option value="Feminino">Feminino</option>
                                <option value="Outro">Outro</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="details">CPF</label>
                            <input type="text" id="cpf" name="cpf" placeholder="000.000.000-00" maxlength="14" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" required>
                        </div>

                        <div class="form-group">
                            <label class="details">CNS</label>
                            <input type="text" placeholder="Digite seu CNS" required> 
                        </div>

                        <div class="form-group">
                            <label class="details">Telefone</label>
                            <input type="text" placeholder="Digite seu Telefone" required> 
                        </div>

                        <div class="form-group">
                            <label class="details">Município</label>
                            <input type="text" placeholder="Digite seu Município" required> 
                        </div>

                        <div class="form-group">
                            <label class="details">Bairro</label>
                            <input type="text" placeholder="Digite seu Bairro" required> 
                        </div>

                        <div class="form-group">
                            <label class="details">E-mail</label>
                            <input type="email" placeholder="Digite seu E-mail" required> 
                        </div>

                        <div class="form-group cep-box">
                            <label for="cep">CEP</label>
                            <div class="cep-container">
                                <input type="text" id="cep" name="cep" placeholder="Digite seu CEP" maxlength="8" pattern="\d{8}" required>
                                <button type="button" class="search-cep">Pesquisar</button>
                            </div>
                        </div>
                        
        
                        <div class="cancel-btn">
                            <input type="button" value="Voltar" onclick="window.location.href='/menu'">
                        </div>

                            <input type="submit" class="save-btn" value="Salvar">
                    </div>
            </form>
        </div>
    </main>
`)
   
 