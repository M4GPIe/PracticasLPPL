/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_ASIN_H_INCLUDED
# define YY_YY_ASIN_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    AND_ = 258,                    /* AND_  */
    OR_ = 259,                     /* OR_  */
    EQ_ = 260,                     /* EQ_  */
    NEQ_ = 261,                    /* NEQ_  */
    GT_ = 262,                     /* GT_  */
    GEQ_ = 263,                    /* GEQ_  */
    LT_ = 264,                     /* LT_  */
    LEQ_ = 265,                    /* LEQ_  */
    ADD_ = 266,                    /* ADD_  */
    SUB_ = 267,                    /* SUB_  */
    MULT_ = 268,                   /* MULT_  */
    DIV_ = 269,                    /* DIV_  */
    NEG_ = 270,                    /* NEG_  */
    ASIG_ = 271,                   /* ASIG_  */
    TRUE_ = 272,                   /* TRUE_  */
    FALSE_ = 273,                  /* FALSE_  */
    INT_ = 274,                    /* INT_  */
    BOOL_ = 275,                   /* BOOL_  */
    RETURN_ = 276,                 /* RETURN_  */
    PRINT_ = 277,                  /* PRINT_  */
    IF_ = 278,                     /* IF_  */
    ELSE_ = 279,                   /* ELSE_  */
    FOR_ = 280,                    /* FOR_  */
    READ_ = 281,                   /* READ_  */
    CTE_ = 282,                    /* CTE_  */
    ID_ = 283,                     /* ID_  */
    PAROP_ = 284,                  /* PAROP_  */
    PARCL_ = 285,                  /* PARCL_  */
    BRACKOP_ = 286,                /* BRACKOP_  */
    BRACKCL_ = 287,                /* BRACKCL_  */
    KEYOP_ = 288,                  /* KEYOP_  */
    KEYCL_ = 289,                  /* KEYCL_  */
    COMMA_ = 290,                  /* COMMA_  */
    SEMIC_ = 291                   /* SEMIC_  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_ASIN_H_INCLUDED  */
