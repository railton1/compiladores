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

RESERVADA : ('boolean'|'break'|'callout'|'class'|'continue'|'else'|'for'|'int'|'return'|'void'|'if');

BOOLEANLITERAL : ('true'|'false');

ID : (ALF|'_')(ALF|NUM|'_')*;

WS_ : ((' ')+|'\n'|'\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ALF|NUM|ESC|EPC) '\'';

STRING: '"'(ALF|NUM|EPS)*'"';

INTLITERAL : (NUM(NUM)*|'0x'(NUM|HEX)+);

OP : ('+'|'-'|'*'|'<'|'<='|'!='|'&&'|'>'|'>='|'='|'!'|'||'|'=='|'%');

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');
ALF : ('a'..'z' | 'A'..'Z');
NUM : ('0'..'9');
HEX : ('a'..'f'|'A'..'F');
EPC : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~');
EPS : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~'|'"'|'\\\''|'\t'|'\\'|'\"');
