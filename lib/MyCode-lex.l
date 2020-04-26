%{
    #include <stdio.h>
    #include <string.h>
    #include <math.h>
%}

Numbers [0-9]
Characters [a-zA-Z]

%%

";" {
    printf("Finalizar comando: %s\n",yytext);
}
"+" {
    printf("Operador de soma: %s\n",yytext);
}
"-" {
    printf("Operador de subtracao: %s\n",yytext);
}
"*" {
    printf("Operador de multiplicacao: %s\n",yytext);
}
"/" {
    printf("Operador de divisao: %s\n",yytext);
}

for {
    printf("Laco de repeticao: %s\n",yytext);
}
if {
    printf("Condicao SE: %s\n",yytext);
}
else {
    printf("Condicao SE NAO: %s\n",yytext);
}

%%

int yywrap();

int main(void){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}