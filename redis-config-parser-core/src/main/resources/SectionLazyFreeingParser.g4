parser grammar SectionLazyFreeingParser;

options { language = Java; tokenVocab = RedisLexer; }

lazyFreeingStatements:
    lazyFreeingStatement+;

lazyFreeingStatement
    : lazyfreeLazyEviction
    | lazyfreeLazyExpire
    | lazyfreeLazyServerDel
    | replicaLazyFlush
    | lazyfreeLazyUserDel
    | lazyfreeLazyUserFlush
    ;

lazyfreeLazyEviction: LAZYFREE_LAZY_EVICTION;
lazyfreeLazyExpire: LAZYFREE_LAZY_EXPIRE;
lazyfreeLazyServerDel: LAZYFREE_LAZY_SERVER_DEL;
replicaLazyFlush: REPLICA_LAZY_FLUSH;
lazyfreeLazyUserDel: LAZYFREE_LAZY_USER_DEL;
lazyfreeLazyUserFlush: LAZYFREE_LAZY_USER_FLUSH;