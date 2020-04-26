# MyCode Compiler
> Always in branch Master.

Welcome to MyCode Compiler, academic project to understand how compilers work.

## Linguagem

A linguagem escolhida foi C, por conta da sintaxe simples e comum, facilidade de implementação e disponibilidade do Flex para a mesma

## Ferramentas

A ferramenta escolhida foi o Flex (Fast Lexical Analyzer Generator), por sua facilidade de uso e velocidade.

## Como executar
1. Clonar o repositório
2. Pelo terminal, entrar em /src
3. Executar o comando `flex MyCode-lex.l`
4. Executar o comando `gcc lex.yy.c`
5. Executar o comando `./a.out`
6. Inserir a cadeia a ser reconhecida

## Gramática

Número ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9  
Caracter ::= a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z  
Simbolos ::= ; | + | - | * | / | { | } | [ | ] | ( | ) | : | = | > | <

## Tabela de simbolos
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
