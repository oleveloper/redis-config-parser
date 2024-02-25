parser grammar SectionSlowLogParser;

options { language = Java; tokenVocab = RedisLexer; }

slowLogStatements:
    slowLogStatement+;

slowLogStatement
    : slowlogLogSlowerThan
    | slowlogMaxLen
    ;

slowlogLogSlowerThan: SLOWLOG_LOG_SLOWER_THAN;
slowlogMaxLen: SLOWLOG_MAX_LEN;