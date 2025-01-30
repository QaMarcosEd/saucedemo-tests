# Projeto de Testes Automatizados

Este repositório contém testes automatizados para validação de funcionalidades do site, utilizando Robot Framework.

## Tecnologias Utilizadas
- **Robot Framework**: Framework para automação de testes.
- **Biblioteca Browser**: Biblioteca para interação com navegadores.
- **Python**: Linguagem utilizada para desenvolvimento e execução dos testes.

## Configuração do Ambiente

1. Instale o [Python](https://www.python.org/)
2. Instale o Robot Framework e bibliotecas necessárias:
   ```sh
   pip install robotframework
   ```
3. Clone este repositório e navegue até o diretório raiz:
   ```sh
   git clone https://github.com/seuusuario/seuprojeto.git
   cd seuprojeto
   ```
4. Execute os testes com o comando:
   ```sh
   robot tests/
   ```

## Casos de Teste

### Caso de Teste: Login com Usuário Válido
**ID**: CT-001  
**Descrição**: Verificar se o usuário consegue fazer login com credenciais válidas.  
**Pré-condições**:  
- O site está acessível e funcional.  
- O usuário possui credenciais válidas (`standard_user`, `secret_sauce`).  

#### Passos para execução:
1. Acesse a página de login.
2. Insira o **usuário**: `standard_user` e **senha**: `secret_sauce`.
3. Clique no botão "Login".

#### Resultado Esperado:
- O sistema redireciona para a página de produtos.

#### Status: ✅ Passou

---

### Caso de Teste: Tentativa de Login com Dados Inválidos
**ID**: CT-002  
**Descrição**: Verificar mensagens de erro ao tentar login com dados incorretos ou incompletos.  
**Pré-condições**:  
- O site está acessível e funcional.  

#### Passos para execução:
1. Tente fazer login com as seguintes combinações:
   - Usuário vazio e senha vazia.
   - Usuário válido e senha vazia.
   - Usuário vazio e senha válida.
   - Usuário bloqueado (`locked_out_user`) e senha válida.

#### Resultado Esperado:
- O sistema exibe mensagens de erro apropriadas:
  - **"Epic sadface: Username is required"**.
  - **"Epic sadface: Password is required"**.
  - **"Epic sadface: Sorry, this user has been locked out."**.

#### Status: ✅ Passou

---

### Caso de Teste: Visualizar Detalhes do Produto
**ID**: CT-003  
**Descrição**: Garantir que os detalhes do produto sejam exibidos corretamente ao clicar em um item.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Clique em um produto na lista de produtos.

#### Resultado Esperado:
- Os detalhes do produto são exibidos corretamente, incluindo nome, preço e descrição.

#### Status: ✅ Passou

---

### Caso de Teste: Ordenação Alfabética Crescente de Produtos
**ID**: CT-004  
**Descrição**: Verificar se os produtos são ordenados em ordem alfabética crescente.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Selecione a opção "Name (A to Z)" no seletor de ordenação.

#### Resultado Esperado:
- Os produtos são exibidos em ordem alfabética crescente.

#### Status: ✅ Passou

---

### Caso de Teste: Ordenação Alfabética Decrescente de Produtos
**ID**: CT-005  
**Descrição**: Verificar se os produtos são ordenados em ordem alfabética decrescente.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Selecione a opção "Name (Z to A)" no seletor de ordenação.

#### Resultado Esperado:
- Os produtos são exibidos em ordem alfabética decrescente.

#### Status: ✅ Passou

---

### Caso de Teste: Ordenação Crescente de Preço
**ID**: CT-006  
**Descrição**: Verificar se os produtos são ordenados por preço em ordem crescente.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Selecione a opção "Price (low to high)" no seletor de ordenação.

#### Resultado Esperado:
- Os produtos são exibidos em ordem crescente de preço.

#### Status: ✅ Passou

---

### Caso de Teste: Ordenação Decrescente de Preço
**ID**: CT-007  
**Descrição**: Verificar se os produtos são ordenados por preço em ordem decrescente.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Selecione a opção "Price (high to low)" no seletor de ordenação.

#### Resultado Esperado:
- Os produtos são exibidos em ordem decrescente de preço.

#### Status: ✅ Passou

---

### Caso de Teste: Adicionar Item ao Carrinho
**ID**: CT-008  
**Descrição**: Verificar se é possível adicionar um item ao carrinho com sucesso.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Adicione um item ao carrinho.
3. Acesse a página do carrinho.

#### Resultado Esperado:
- O item adicionado aparece na página do carrinho.

#### Status: ✅ Passou

---

### Caso de Teste: Remover Item do Carrinho
**ID**: CT-009  
**Descrição**: Verificar se é possível remover um item do carrinho com sucesso.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  
- Há um item no carrinho.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Adicione um item ao carrinho.
3. Acesse a página do carrinho.
4. Clique no botão de remover item.

#### Resultado Esperado:
- O item é removido do carrinho e não aparece mais na lista.

#### Status: ✅ Passou

---

### Caso de Teste: Fluxo Completo de Checkout
**ID**: CT-010  
**Descrição**: Garantir que o fluxo completo de checkout seja concluído com sucesso.  
**Pré-condições**:  
- O usuário está logado com credenciais válidas.  
- Há um item no carrinho.  

#### Passos para execução:
1. Faça login com **usuário**: `standard_user` e **senha**: `secret_sauce`.
2. Adicione um item ao carrinho.
3. Acesse a página do carrinho.
4. Clique no botão "Checkout".
5. Preencha os campos obrigatórios:
   - Nome: `Marcos`
   - Sobrenome: `Araujo`
   - CEP: `47740046`
6. Clique em "Continue".
7. Clique em "Finish".

#### Resultado Esperado:
- O sistema exibe a mensagem **"Thank you for your order!"**.

#### Status: ✅ Passou