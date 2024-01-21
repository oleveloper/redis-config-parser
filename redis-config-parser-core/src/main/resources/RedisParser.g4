parser grammar RedisParser;

options { language = Java; tokenVocab = RedisLexer; }
import SectionIncludesParser, SectionModulesParser, SectionNetworkParser;

configurations
    : configuration+
    ;

configuration
    : includesStatements
    | modulesStatements
    | networkStatements
    ;