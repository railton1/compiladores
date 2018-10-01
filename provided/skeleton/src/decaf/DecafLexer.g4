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

TRUE: 'true';

FALSE: 'false';

CHAR : '\'' (ALF|NUM|ESC|EPC) '\'';

STRING: '"'(ALF|NUM|EPS)*'"';

INTLITERAL : (NUM(NUM)*|'0x'(HEX|HEX)*);

INT: 'int';

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

ASSIGN_OP: ('+='|'-=');

EXCLA: '!' ;

MENOS: '-';

BOOLEAN: 'boolean';

RESERVAS: ('boolean'|'break'|'callout'|'class'|'continue'|'if'|'else'|'for'|'int'|'float'|'return'|'void');

ARITH_OP: ('+'|'-'|'*'|'/'|'%');

REL_OP: ('<'|'>'|'<='|'>=');

EQ_OP: ('=='|'!=');

COND_OP: ('&&'|'||');

ID : (ALF|'_')(ALF|NUM|'_')*;

WS_ : ((' ')+|'\n'|'\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

fragment ESC : '\\' ('n'|'t'|'\\'|'"');
fragment ALF : ('a'..'z' | 'A'..'Z');
fragment NUM : ('0'..'9');
fragment HEX : ('0'..'9'|'a'..'f'|'A'..'F');
fragment EPC : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~');
fragment EPS : (' '..'!'|'#'..'&'|'('..'/'|':'..'@'|'['|']'|'^'..'`'|'{'..'~'|'"'|'\\\''|'\t'|'\\'|'\"');
