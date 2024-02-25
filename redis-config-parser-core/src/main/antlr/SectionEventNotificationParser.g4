parser grammar SectionEventNotificationParser;

options { language = Java; tokenVocab = RedisLexer; }

eventNotificationStatements:
    eventNotificationStatement+;

eventNotificationStatement
    : nodifyKeyspaceEvents
    ;

nodifyKeyspaceEvents: NOTIFY_KEYSPACE_EVENTS;