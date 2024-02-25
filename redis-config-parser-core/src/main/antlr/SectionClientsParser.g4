parser grammar SectionClientsParser;

options { language = Java; tokenVocab = RedisLexer; }

clientsStatements:
    clientsStatement+;

clientsStatement
    : maxclients
    ;

maxclients: MAXCLIENTS;