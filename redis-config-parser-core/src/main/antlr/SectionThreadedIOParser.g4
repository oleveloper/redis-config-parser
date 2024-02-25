parser grammar SectionThreadedIOParser;

options { language = Java; tokenVocab = RedisLexer; }

threadedIOStatements:
    threadedIOStatement+;

threadedIOStatement
    : ioThreads
    | ioThreadsDoReads
    ;

ioThreads: IO_THREADS;
ioThreadsDoReads: IO_THREADS_DO_READS;