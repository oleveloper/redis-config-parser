parser grammar SectionBlockingCommandsParser;

options { language = Java; tokenVocab = RedisLexer; }

blockingCommandStatements:
    blockingCommandStatement+;

blockingCommandStatement
    : luaTimeLimit
    | busyReplyThreshold
    ;

luaTimeLimit: LUA_TIME_LIMIT;
busyReplyThreshold: BUSY_REPLY_THRESHOLD;