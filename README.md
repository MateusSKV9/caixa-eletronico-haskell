# 🏧 Caixa Eletrônico

Um simulador de caixa eletrônico desenvolvido em **Haskell** como atividade acadêmica, com o objetivo de praticar conceitos de programação funcional, entrada e saída de dados, modularização, recursividade e manipulação de arquivos.

## 📌 Funcionalidades

O sistema oferece as seguintes operações:

- **Consultar saldo:** exibe o saldo atual da conta.
- **Depósito:** permite adicionar valores ao saldo, rejeitando valores negativos.
- **Saque:** permite retirar valores, validando o saldo disponível e rejeitando valores negativos.
- **Persistência de dados:** carrega o saldo de um arquivo de texto ao iniciar o programa e salva as alterações ao encerrá-lo.
- **Menu interativo:** permite navegar pelas operações até escolher a opção de saída.

## 🛠️ Tecnologias utilizadas

- [Haskell](https://www.haskell.org/)
- GHC (Glasgow Haskell Compiler)
- GHCi
- Manipulação de arquivos de texto

## 📂 Estrutura do projeto

```text
caixa-eletronico/
├── caixa1.hs       # Programa principal e menu interativo
├── Banco.hs        # Estado da conta e operações bancárias
├── Persistencia.hs # Carregamento e salvamento do saldo
├── saldo.txt       # Arquivo de armazenamento dos dados
└── README.md       # Documentação do projeto
```

## ⚙️ Pré-requisitos

Antes de executar o projeto, é necessário ter o **GHC** instalado.

Você pode verificar a instalação utilizando:

```bash
ghc --version
```

Caso ainda não tenha o compilador, consulte a documentação de instalação do [GHCup](https://www.haskell.org/ghcup/).

## 🚀 Como executar

**1. Clone o repositório:**

```bash
git clone https://github.com/MateusSKV9/caixa-eletronico-haskell
```

**2. Acesse a pasta do projeto:**

```bash
cd caixa-eletronico
```

**3. Execute o programa:**

```bash
runghc caixa1.hs saldo.txt
```

O nome do arquivo utilizado para armazenar o saldo deve ser informado como argumento da linha de comando.

Se o arquivo ainda não existir, o sistema iniciará a conta com saldo zero. Ao encerrar o programa, o saldo será salvo no arquivo informado.

### Alternativa: compilando o projeto

Também é possível gerar um executável utilizando:

```bash
ghc caixa1.hs -o caixa
```

No Windows, execute:

```powershell
.\caixa.exe saldo.txt
```

## 💾 Persistência de dados

O projeto utiliza arquivos de texto para armazenar o saldo da conta.

O funcionamento ocorre em três etapas:

1. **Inicialização:** o programa verifica se o arquivo informado existe e recupera o saldo armazenado.
2. **Execução:** as operações realizadas atualizam o estado da conta durante a utilização.
3. **Encerramento:** o saldo final é gravado no mesmo arquivo, permitindo recuperá-lo na próxima execução.

## 📚 Conceitos praticados

Durante o desenvolvimento, foram trabalhados conceitos importantes da linguagem Haskell:

- Tipos e declarações de funções.
- Tipos de entrada e saída (`IO`).
- Manipulação de estados.
- Recursividade.
- Condicionais e pattern matching.
- Modularização e importação de módulos.
- Leitura e escrita de arquivos.
- Argumentos de linha de comando.

## 👥 Desenvolvimento

Projeto desenvolvido em equipe ([Mateus Santos](https://github.com/MateusSKV9) e [William Souza](https://github.com/willalmeid)) como parte de uma atividade acadêmica, com foco na aplicação prática dos fundamentos da linguagem Haskell.
