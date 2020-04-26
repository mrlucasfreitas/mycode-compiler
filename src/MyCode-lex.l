%{
    #include <stdio.h>
    #include <string.h>
    #include <math.h>

    int line = 1;
%}

Numbers [0-9]
Characters [a-zA-Z]

%%
[\n] { line++; }

";"     { printf(">> Line %d < token %s :: Final de comando >\n", line, yytext); }
"+"     { printf(">> Line %d < token %s :: Operador de soma >\n", line, yytext); }
"-"     { printf(">> Line %d < token %s :: Operador de subtracao >\n", line, yytext); }
"*"     { printf(">> Line %d < token %s :: Operador de multiplicacao >\n", line, yytext); }
"/"     { printf(">> Line %d < token %s :: Operador de divisao >\n", line, yytext); }

for     { printf(">> Line %d < reserved %s :: Laco de repeticao >\n", line, yytext); }
if      { printf(">> Line %d < reserved %s :: Condicao SE >\n", line, yytext); }
else    { printf(">> Line %d < reserved %s :: Condicao SE NAO >\n", line, yytext); }
do      { printf(">> Line %d < reserved %s :: Laco de repeticao >\n", line, yytext); }
while   { printf(">> Line %d < reserved %s :: Laco de repeticao >\n", line, yytext); }
switch  { printf(">> Line %d < reserved %s :: Estrutura condicional para varias opcoes >\n", line, yytext); }
case    { printf(">> Line %d < reserved %s :: Seletor de constante >\n", line, yytext); }
break   { printf(">> Line %d < reserved %s :: Forca saida dos demais comandos >\n", line, yytext); }
char    { printf(">> Line %d < reserved %s :: Define o tipo de uma variavel >\n", line, yytext); }
int     { printf(">> Line %d < reserved %s :: Define o tipo de uma variavel >\n", line, yytext); }
float   { printf(">> Line %d < reserved %s :: Define o tipo de uma variavel >\n", line, yytext); }
long    { printf(">> Line %d < reserved %s :: Define o tipo de uma variavel >\n", line, yytext); }
double  { printf(">> Line %d < reserved %s :: Define o tipo de uma variavel >\n", line, yytext); }
return  { printf(">> Line %d < reserved %s :: Retorna um valor dentro de uma funcao >\n", line, yytext); }

%%

int yywrap();

int main(void){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}