parser grammar SectionShutdownParser;

options { language = Java; tokenVocab = RedisLexer; }

shutdownStatements:
    shutdownStatement+;

shutdownStatement
    : shutdownTimeout
    | shutdownOnSigint
    | shutdownOnSigterm
    ;

shutdownTimeout: SHUTDOWN_TIMEOUT;
shutdownOnSigint: SHUTDOWN_ON_SIGINT;
shutdownOnSigterm: SHUTDOWN_ON_SIGTERM;