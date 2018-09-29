lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}


TK_class : 'class Program';


LCURLY : '{';
RCURLY : '}';

LPAR : '(';
RPAR : ')';

LCOL : '[';
RCOL : ']';

BOOLEANLITERAL : ('true'|'false');

ID : (ALF|'_')~'.'(ALF|NUM|'_')*~'.';

WS_ : ((' ')+|'\n'|'\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ALF|NUM|ESC|EPC) '\'';

STRING: '"'(ALF|NUM|EPS)*'"';

INTLITERAL : (NUM(NUM)*|'0x'(HEX|HEX)*);

TIPO: ('int' | 'boolean');

VIR: ',';

PV: ';';

VOID: 'void';

IF: 'if';

ELSE: 'else';

FOR: 'for';

RETURN: 'return';

BREAK: 'break';

IGUAL: '=';

CONTINUE: 'continue';

CALLOUT: 'callout';

CLASS: 'class';

ASSIGN_OP: ('='|'+='|'-=');

MENOS: '-';

EXCLA: '!';

ARITH_OP: ('+'|'-'|'*'|'/'|'%');

REL_OP: ('<'|'>'|'<='|'>=');

EQ_OP: ('=='|'!=');

COND_OP: ('&&'|'||');

fragment
BOL : ('true'|'false');
ESC : '\\' ('n'|'t'|'\\'|'"');
ALF : ('a'..'z' | 'A'..'Z');
NUM : ('0'..'9');
HEX : ('0'..'9'|'a'..'f'|'A'..'F');
EPC : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~');
EPS : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~'|'"'|'\\\''|'\t'|'\\'|'\"');
