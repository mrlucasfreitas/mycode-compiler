%{
    #include <stdio.h>
    #include <string.h>
    #include <math.h>

    int character = 1;
    int line = 1;
%}

Numbers [0-9]
Characters [a-zA-Z0-9]
WhiteSpace [ ]*
LineWhiteSpace [ ]
Comment ({Characters}|{Numbers}|{WhiteSpace})*
ID ({Characters}|_)+({Characters}|{Numbers}|_)*

%%
[\n] { line++; character = 1; }

";"     { printf(">> Line %d << Character %d < TOKEN %s _Final de comando_>\n", line, character++, yytext); }
"+"     { printf(">> Line %d << Character %d < TOKEN %s _Operador de soma_>\n", line, character++, yytext); }
"-"     { printf(">> Line %d << Character %d < TOKEN %s _Operador de subtracao_>\n", line, character++, yytext); }
"*"     { printf(">> Line %d << Character %d < TOKEN %s _Operador de multiplicacao_>\n", line, character++, yytext); }
"/"     { printf(">> Line %d << Character %d < TOKEN %s _Operador de divisao_>\n", line, character++, yytext); }
"{"     { printf(">> Line %d << Character %d < TOKEN %s _Abre bloco de codigo_>\n", line, character++, yytext); }
"}"     { printf(">> Line %d << Character %d < TOKEN %s _Fecha bloco de codigo_>\n", line, character++, yytext); }
"["     { printf(">> Line %d << Character %d < TOKEN %s _Abre bloco de codigo_>\n", line, character++, yytext); }
"]"     { printf(">> Line %d << Character %d < TOKEN %s _Fecha bloco de codigo_>\n", line, character++, yytext); }
"("     { printf(">> Line %d << Character %d < TOKEN %s _Abre bloco de codigo_>\n", line, character++, yytext); }
")"     { printf(">> Line %d << Character %d < TOKEN %s _Fecha bloco de codigo_>\n", line, character++, yytext); }
":"     { printf(">> Line %d << Character %d < TOKEN %s _Dois pontos_>\n", line, character++, yytext); }
"="     { printf(">> Line %d << Character %d < TOKEN %s _Atribui valor_>\n", line, character++, yytext); }
">"     { printf(">> Line %d << Character %d < TOKEN %s _Comparador de desigualdade_>\n", line, character++, yytext); }
"<"     { printf(">> Line %d << Character %d < TOKEN %s _Comparador de desigualdade_>\n", line, character++, yytext); }

for     { printf(">> Line %d << Character %d < RESERVED %s _Laco de repeticao_>\n", line, character++, yytext); }
if      { printf(">> Line %d << Character %d < RESERVED %s _Condicao SE_>\n", line, character++, yytext); }
else    { printf(">> Line %d << Character %d < RESERVED %s _Condicao SE NAO_>\n", line, character++, yytext); }
do      { printf(">> Line %d << Character %d < RESERVED %s _Laco de repeticao_>\n", line, character++, yytext); }
while   { printf(">> Line %d << Character %d < RESERVED %s _Laco de repeticao_>\n", line, character++, yytext); }
switch  { printf(">> Line %d << Character %d < RESERVED %s _Estrutura condicional para varias opcoes_>\n", line, character++, yytext); }
case    { printf(">> Line %d << Character %d < RESERVED %s _Seletor de constante_>\n", line, character++, yytext); }
break   { printf(">> Line %d << Character %d < RESERVED %s _Forca saida dos demais comandos_>\n", line, character++, yytext); }
char    { printf(">> Line %d << Character %d < RESERVED %s _Define o tipo de uma variavel_>\n", line, character++, yytext); }
int     { printf(">> Line %d << Character %d < RESERVED %s _Define o tipo de uma variavel_>\n", line, character++, yytext); }
float   { printf(">> Line %d << Character %d < RESERVED %s _Define o tipo de uma variavel_>\n", line, character++, yytext); }
long    { printf(">> Line %d << Character %d < RESERVED %s _Define o tipo de uma variavel_>\n", line, character++, yytext); }
double  { printf(">> Line %d << Character %d < RESERVED %s _Define o tipo de uma variavel_>\n", line, character++, yytext); }
return  { printf(">> Line %d << Character %d < RESERVED %s _Retorna um valor dentro de uma funcao_>\n", line, character++, yytext); }

\/\/{Comment}+\n    { printf(">> Line null << Character null < COMMENT LINE _Linha de comentario_>\n"); }
{WhiteSpace}        { printf(">> Line %d << Character null < WHITESPACE _Espaco em branco_>\n", line); }
{LineWhiteSpace}+\n { printf(">> Line null << Character null < EMPTY LINE _Linha em brando >\n"); }
{Numbers}+          { printf(">> Line %d << Character %d < NUMBER %s _Numero inteiro_>\n", line, character++, yytext); }
\"{Characters}+\"   { printf(">> Line %d << Character %d < STRING %s _Palavra ou frase_>\n", line, character++, yytext); }
${ID}               { printf(">> Line %d << Character %d < VARIABLE %s _Nome da variavel_>\n", line, character++, yytext); }
%%

int yywrap();

int main(void){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}
