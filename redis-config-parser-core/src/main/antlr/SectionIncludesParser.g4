parser grammar SectionIncludesParser;

options { language = Java; tokenVocab = RedisLexer; }

includesStatements:
    includesStatement+;

includesStatement:
    include+;

include:
    INCLUDE FILE_PATH;