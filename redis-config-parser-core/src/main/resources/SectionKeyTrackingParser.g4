parser grammar SectionKeyTrackingParser;

options { language = Java; tokenVocab = RedisLexer; }

keyTrackingStatements:
    keyTrackingStatement+;

keyTrackingStatement
    : trackingTableMaxKeys
    ;

trackingTableMaxKeys: TRACKING_TABLE_MAX_KEYS;