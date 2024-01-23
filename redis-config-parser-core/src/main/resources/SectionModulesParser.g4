parser grammar SectionModulesParser;

options { language = Java; tokenVocab = RedisLexer; }

modulesStatements:
    modulesStatement+;

modulesStatement:
    loadModule+;

loadModule
    :LOADMODULE FILE_PATH ARGS*;