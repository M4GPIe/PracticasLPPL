/*****************************************************************************/
/**  Analizador léxico C-      Manuel de los Santos Sanchis   17/10/24      **/
/*****************************************************************************/

%{
#include "header.h"
#include "asin.h"
#include <stdio.h>

#define  retornar(x) {if (verbosidad) ECHO ; return (x) ; }
%}

%option noinput
%option nounput

%option yylineno

/*REGex*/

delimitador     [ \t\n]+
identificador   ^[A-Za-z_]+$
contante        \b\d+\.?\d*|\.\d+\b
comentario      \/\/.*$

%%

{delimitador}       {if (verbosidad) ECHO ;}
{identificador}     {retornar (ID_) ;}
{contante}          {retornar (CTE_) ;}
{comentario}        {if (verbosidad) ECHO ;}

"+"             { retornar (ADD_) ;}
"-"             { retornar (SUB_) ; }
"*"             { retornar (MULT_) ; }
"/"             { retornar (DIV_) ; }
"=="             { retornar (EQ_) ; }
"!="             { retornar (NEQ_) ; }
"&&"             { retornar (AND_) ; }
"||"             { retornar (OR_) ; }
">"             { retornar (GT_) ; }
"<"             { retornar (LT_) ; }
">="             { retornar (GEQ_) ; }
"<="             { retornar (LEQ_) ; }
"!"             { retornar (NEG_) ; }
"="             { retornar (ASIG_) ; }

"("             { retornar (PAROP_) ; }
")"             { retornar (PARCL_) ; }
"{"             { retornar (KEYOP_) ; }
"}"             { retornar (KEYCL_) ; }
"["             { retornar (BRACKOP_) ; }
"]"             { retornar (BRACKCL_) ; }
","             { retornar (COMMA_) ; } 
";"             { retornar (SEMIC_) ; }
.				{ yyerror("Caracter desconocido") ;}
%%
