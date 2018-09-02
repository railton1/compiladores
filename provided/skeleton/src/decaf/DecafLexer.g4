lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';


ID  :(ALF|'_')(ALF|NUM|'_')*;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ALF|NUM|ESC|EPC) '\'';

STRING: '"'(ALF|NUM|EPS)*'"';

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');
ALF : ('a'..'z' | 'A'..'Z');
NUM : ('0'..'9');
EPC : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~');
EPS : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~'|'"'|'\\\''|'\t'|'\\'|'\"');
