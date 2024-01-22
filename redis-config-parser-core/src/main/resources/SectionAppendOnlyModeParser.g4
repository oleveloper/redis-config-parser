parser grammar SectionAppendOnlyModeParser;

options { language = Java; tokenVocab = RedisLexer; }

appendOnlyModeStatements:
    appendOnlyModeStatement+;

appendOnlyModeStatement
    : appendOnly
    | appendFileName
    | appendDirName
    | appendFSync
    | noAppendFSyncOnRewrite
    | autoAOFRewritePercentage
    | autoAOFRewriteMinSize
    | aofLoadTruncated
    | aofUseRdbPreamble
    | aofTimestampEnabled
    ;

appendOnly: APPENDONLY;
appendFileName: APPENDFILENAME;
appendDirName: APPENDDIRNAME;
appendFSync: APPENDFSYNC;
noAppendFSyncOnRewrite: NO_APPENDFSYNC_ON_REWRITE;
autoAOFRewritePercentage: AUTO_AOF_REWRITE_PERCENTAGE;
autoAOFRewriteMinSize: AUTO_AOF_REWRITE_MIN_SIZE;
aofLoadTruncated: AOF_LOAD_TRUNCATED;
aofUseRdbPreamble: AOF_USE_RDB_PREAMBLE;
aofTimestampEnabled: AOF_TIMESTAMP_ENABLED;