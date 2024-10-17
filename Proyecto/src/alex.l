/*****************************************************************************/
/**  Analizador léxico C-      Manuel de los Santos Sanchis   17/10/24      **/
/*****************************************************************************/

%{
#include "header.h"
#include "asin.h"
#include "string.h"

#define  retornar(x) {if (verbosidad) ECHO ; return (x) ; }
%}

%option noinput
%option nounput

%option yylineno

//REGex

delimitador     [ \t\n]+
digito          [0-9]
entero          {digito}+

%%

{delimitador}   {if (verbosidad) ECHO ; }
"+"             { retornar (MAS_) ;}
"-"             { retornar (MENOS_) ; }
"*"             { retornar (POR_) ; }
"/"             { retornar (DIV_) ; }
"("             { retornar (PARA_) ; }
")"             { retornar (PARC_) ; }
{entero}        { retornar (CTE_) ; }
.				{ yyerror("Caracter desconocido") ;}
%%
