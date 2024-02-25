lexer grammar RedisLexer;

options { language = Java; }

import RedisReservedKey, RedisReservedValue;

COMMENT: '#' ~[\r\n]* -> skip;
WHITESPACE: [ \t\r\n]+ -> skip;