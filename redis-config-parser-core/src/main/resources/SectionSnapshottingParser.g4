parser grammar SectionSnapshottingParser;

options { language = Java; tokenVocab = RedisLexer; }

snapshottingStatements:
    snapshottingStatement+;

snapshottingStatement
    : save
    | stopWritesOnBgsaveError
    | rdbcompression
    | rdbchecksum
    | sanitizeDumpPayload
    | dbfilename
    | rdbDelSyncFiles
    | dir
    ;

save: SAVE;
stopWritesOnBgsaveError: STOP_WRITES_ON_BGSAVE_ERROR;
rdbcompression: RDBCOMPRESSION;
rdbchecksum: RDBCHECKSUM;
sanitizeDumpPayload: SANITIZE_DUMP_PAYLOAD;
dbfilename: DBFILENAME;
rdbDelSyncFiles: RDB_DEL_SYNC_FILES;
dir: DIR;