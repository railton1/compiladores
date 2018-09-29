parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: TK_class LCURLY field_decl* method_decl* RCURLY;

field_decl:  LCURLY sub_field (VIR sub_field)* RCURLY PV;

sub_field: TIPO ID | TIPO ID LCOL INTLITERAL RCOL;

method_decl: (TIPO | VOID) ID LPAR LCURLY sub_method_var (VIR sub_method_var)* RCURLY RPAR block;

sub_method_var: TIPO ID;

block: LCURLY var_decl* statement* RCURLY;

var_decl: sub_method_var (VIR sub_method_var)* PV;

statement: location ASSIGN_OP expr PV | method_call PV | IF expr block (ELSE block)* | FOR ID IGUAL expr VIR expr block | RETURN (expr)* PV | BREAK PV | CONTINUE PV | block;

method_call: method_name LPAR expr (VIR expr)* RPAR | CALLOUT LPAR STRING (callout_arg (VIR callout_arg)*)* RPAR;

method_name: ID;

location: ID | ID expr*;

expr: location | method_call | literal | expr bin_op expr | MENOS expr | EXCLA expr | LPAR expr RPAR;

callout_arg: expr | STRING;

bin_op: ARITH_OP | REL_OP | EQ_OP | COND_OP;

literal: INTLITERAL | CHAR | BOOLEANLITERAL;
