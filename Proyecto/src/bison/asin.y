/*****************************************************************************/
/**  Analizador sintáctico C-      Manuel de los Santos Sanchis   17/10/24  **/
/*****************************************************************************/

%{
#include <stdio.h>
#include "header.h"
%}

//operadores
%token AND_ OR_ EQ_ NEQ_ GT_ GEQ_ LT_ LEQ_ ADD_ SUB_ MULT_ DIV_ NEG_ ASIG_

//palabras reservadas
%token TRUE_ FALSE_ INT_ BOOL_ RETURN_ PRINT_ IF_ ELSE_ FOR_ READ_

//cte
%token CTE_

//id
%token ID_

//simbolos 
%token PAROP_ PARCL_ BRACKOP_ BRACKCL_ KEYOP_ KEYCL_ COMMA_ SEMIC_

%%

programa : listDecla ;

listDecla : decla | listDecla decla ;

decla : declaVar | declaFunc ;

declaVar : tipoSimp ID_ SEMIC_ | tipoSimp ID_ ASIG_ const SEMIC_ | tipoSimp ID_ BRACKOP_ CTE_ BRACKCL_ SEMIC_ ;

const : CTE_ | TRUE_ | FALSE_ ; 

tipoSimp : INT_ | BOOL_ ;

declaFunc : tipoSimp ID_ PAROP_ paramForm PARCL_ bloque;

paramForm : | listParamForm;

listParamForm : tipoSimp ID_ | tipoSimp ID_ COMMA_ listParamForm;

bloque : KEYOP_ declaVarLocal listInst RETURN_ expre SEMIC_ KEYCL_;

declaVarLocal : | declaVarLocal declaVar;

listInst :  | listInst inst;

inst : KEYOP_ listInst KEYCL_ | instExpre | instEntSal | instSelec | instIter;

instExpre : expre SEMIC_ | SEMIC_;

instEntSal : READ_ PAROP_ ID_ PARCL_ SEMIC_ | PRINT_ PAROP_ expre PARCL_ SEMIC_;

instSelec : IF_ PAROP_ expre PARCL_ inst ELSE_ inst;

instIter : FOR_ PAROP_ expreOP SEMIC_ expre SEMIC_ expreOP PARCL_ inst ;

expreOP : | expre;

expre : expreLogic | ID_ ASIG_ expre | ID_ BRACKOP_ expre BRACKCL_ ASIG_ expre;

expreLogic : expreIgual | expreLogic opLogic expreIgual;

expreIgual : expreRel | expreIgual opIgual expreRel;

expreRel : expreAd | expreRel opRel expreAd;

expreAd : expreMul | expreAd opAd expreMul;

expreMul : expreUna | expreMul opMul expreUna;

expreUna : expreSufi | opUna expreUna;

expreSufi : const | PAROP_ expre PARCL_ | ID_ | ID_ BRACKOP_ expre BRACKCL_ | ID_ PAROP_ paramAct PARCL_;

paramAct : | listParamAct;

listParamAct : expre | expre COMMA_ listParamAct;

opLogic : AND_ | OR_ ;

opIgual : EQ_ | NEQ_ ;

opRel : GT_ | LT_ | GEQ_ | LEQ_ ;

opAd : ADD_ | SUB_ ;

opMul : MULT_ | DIV_ ;

opUna : ADD_ | SUB_ | NEG_ ;


%%
