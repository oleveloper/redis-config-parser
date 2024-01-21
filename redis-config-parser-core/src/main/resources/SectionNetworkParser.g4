parser grammar SectionNetworkParser;

options { language = Java; tokenVocab = RedisLexer; }

networkStatements:
    networkStatement+;

networkStatement
    : bind
    | bindSourceAddr
    | protectedMode
    | enableProtectedConfigs
    | enableDebugCommand
    | enableModuleCommand
    | port
    | tcpBacklog
    ;

bind: BIND (IP)+;
bindSourceAddr: BIND_SOURCE_ADDR IP;
protectedMode: PROTECTED_MODE YESNO;
enableProtectedConfigs: ENABLE_PROTECTED_CONFIGS (YESNO | LOCAL);
enableDebugCommand: ENABLE_DEBUG_COMMAND (YESNO | LOCAL);
enableModuleCommand: ENABLE_MODULE_COMMAND (YESNO | LOCAL);
port: PORT INT;
tcpBacklog: TCP_BACKLOG INT;