lexer grammar RedisLexer;

@header {
    package com.oleveloper.redisparser;
}

options { language = Java; }

import RedisReservedKey, RedisReservedValue;

COMMENT: '#' ~[\r\n]* -> skip;
WHITESPACE: [ \t\r\n]+ -> skip;