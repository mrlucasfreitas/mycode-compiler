# MyCode Compiler
> Always in branch Master.

Bem vindo ao MyCode Compiler, um projeto para mostrar como os compiladores funcionam.

## Linguagem

A linguagem utilizada para fazer este interpretador é a **C**, por conta da sintaxe simples e comum, facilidade de implementação e disponibilidade do Flex para a mesma.

## Ferramentas

A ferramenta escolhida foi o Flex (Fast Lexical Analyzer Generator), por sua do uso e velocidade.

## Instalação
### MAC

### Linux

## Interpretador léxico
### Este interpretador possui as seguintes características
* Mostrar os componentes léxicos;
* Identificar variáveis, strings, inteiros e etc;
* Identificar erros na entrada;
* Informar onde erros foram encontrados;
* Eliminar linhas em branco;
* Eliminar caracteres/espaços em branco;
* Eliminar comentários;
* Enter vazio não pode contar como linha;
* Manter o controle de linhas.

### Como executar
#### Executar de maneira mais automatizada
1. Clonar o repositório:
    ```sh
    $ git clone git@github.com:mrlucasfreitas/mycode-compiler.git
    ```
2. Executar:
    ```sh
    $ make exec
    ```
3. Para sair:
    ```sh
    ctrl c
    ```
4. Inserir a gramática a ser reconhecida.

#### Executar de maneira manual
1. Clonar o repositório:
    ```sh
    $ git clone git@github.com:mrlucasfreitas/mycode-compiler.git
    ```
2. Entrar em no diretório src:
    ```sh
    $ cd ./src/
    ```
3. Executar o flex para gerar o lex.yy.c:
    ```sh
    flex MyCode-lex.l
    ```
4. Executar o gcc no lex.yy.c:
    ```sh
    gcc lex.yy.c
    ```
5. Executar o arquivo gerado pelo gcc:
    ```sh
    ./a.out
    ```
6. Inserir a gramática a ser reconhecida

### Exemplos de uso

### Gramática suportada

Númericos = ``` 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 ```
Caracteres = ``` a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z ```
Símbolos = ``` ; | + | - | * | / | { | } | [ | ] | ( | ) | : | = | > | < ```
Inválidos = ``` . | " | ' | ` | ´ | ~ | @ | # ```

### Tabela de simbolos
| Cadeia | Token |
| ------ | ----- |
| 0-9 | t_number |
| a-z | t_smallchar |
| A-Z | t_bigchar |
| ;	| t_ptvg |
| +	| t_plus |
| -	| t_less |
| *	| t_mult |
| /	| t_divide |
| {	| t_achave |
| }	| t_fchave |
| [	| t_acolchete |
| ]	| t_fcolchete |
| (	| t_aparenteses |
| )	| t_fparenteses |
| :	| t_doispontos |
| =	| t_atribuicao |
| >	| t_maiorque |
| <	| t_menorque |
| for | t_forloop |
| if | t_condicaose |
| else | t_condicaosenao |
| do | t_doloop |
| while	| t_whileloop |
| switch | t_condicaomulti |
| case | t_seletorconst |
| break	| t_exitcommand |
| char | t_typechar |
| int | t_typeint |
| float	| t_typefloat |
| long | t_typelong |
| double | t_typedouble |
| return | t_retornaval |

## Informações adicionais
Trabalho realizado para a disciplina de compiladores.

Turma de Engenharia de Computação.

### Intituição
FEITEP - Faculdade de Engenharias e Arquitetura
Para mais informações clique [aqui](http://www.feitep.edu.br/).

### Alunos
Lucas Freitas
Gustavo Ausechi Furlan
