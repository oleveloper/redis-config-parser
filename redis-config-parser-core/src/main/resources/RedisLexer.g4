lexer grammar RedisLexer;

options { language = Java; }
import RedisReservedKey, RedisReservedValue;


FILE_PATH: UNIX_FILE_PATH | WINDOWS_FILE_PATH;
UNIX_FILE_PATH: (SLASH? FILE_NAME)+ DOT FILE_NAME+;
WINDOWS_FILE_PATH: LETTER COLON (BACKSLASH FILE_NAME)+ DOT FILE_NAME+;

IP: IPV4 | IPV6;
IPV4: ASTERISK | INT DOT INT DOT INT DOT INT;
IPV6: (MINUS | HEX_DIGIT+)? COLON HEX_DIGIT* COLON (ASTERISK | HEX_DIGIT+ | INT)?;

INT: DIGIT+;

YESNO: 'yes' | 'no';
UNDERSCORE: '_';
MINUS: '-';
PLUS: '+';
ASTERISK: '*';
SLASH: '/';
BACKSLASH: '\\';
COLON: ':';
DOT  : '.';

COMMENT: '#' ~[\r\n]* -> skip;
WHITESPACE: [ \t\r\n]+ -> skip;


fragment FILE_NAME
    : LETTER | DIGIT | ASTERISK;

fragment LETTER
    : [a-zA-Z];

fragment HEX_DIGIT
    : [0-9a-fA-F];

fragment DIGIT
    : [0-9];