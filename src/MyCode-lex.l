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
%%

int yywrap();

int main(void){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}