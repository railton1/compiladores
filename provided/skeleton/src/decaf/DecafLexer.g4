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

ID  :
  ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (' '..'~' | ('\')'n') '\'';
STRING : '"' (ESC|~'"')* '"';

fragment
ESC :  '\\' ('n'|'"');
ALF : ('a'..'z' | 'A'..'Z');
NUM : ('0'..'9');
