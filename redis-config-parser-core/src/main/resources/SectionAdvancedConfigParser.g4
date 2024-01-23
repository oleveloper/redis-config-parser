parser grammar SectionAdvancedConfigParser;

options { language = Java; tokenVocab = RedisLexer; }

advancedConfigStatements:
    advancedConfigStatement+;

advancedConfigStatement
    : hashMaxListpackEntries
    | hashMaxListpackValue
    | listMaxListpackSize
    | listCompressDepth
    | setMaxIntsetEntries
    | setMaxListpackEntries
    | setMaxListpackValue
    | zsetMaxListpackEntries
    | zsetMaxListpackValue
    | hllSpaceMaxBytes
    | streamNodeMaxBytes
    | streamNodeMaxEntries
    | activerehashing
    | clientOutputBufferLimit
    | clientQueryBufferLimit
    | maxmemoryClients
    | protoMaxBulkLen
    | hz
    | dynamicHz
    | aofRewriteIncrementalFsync
    | rdbSaveIncrementalFsync
    | lfuLogFactor
    | lufDecayTime
    | maxNewConnectionsPerCycle
    | maxNewTlsConnectionsPerCycle
    ;

hashMaxListpackEntries: HASH_MAX_LISTPACK_ENTRIES;
hashMaxListpackValue: HASH_MAX_LISTPACK_VALUE;
listMaxListpackSize: LIST_MAX_LISTPACK_SIZE;
listCompressDepth: LIST_COMPRESS_DEPTH;
setMaxIntsetEntries: SET_MAX_INTSET_ENTRIES;
setMaxListpackEntries: SET_MAX_LISTPACK_ENTRIES;
setMaxListpackValue: SET_MAX_LISTPACK_VALUE;
zsetMaxListpackEntries: ZSET_MAX_LISTPACK_ENTRIES;
zsetMaxListpackValue: ZSET_MAX_LISTPACK_VALUE;
hllSpaceMaxBytes: HLL_SPARSE_MAX_BYTES;
streamNodeMaxBytes: STREAM_NODE_MAX_BYTES;
streamNodeMaxEntries: STREAM_NODE_MAX_ENTRIES;
activerehashing: ACTIVEREHASHING;
clientOutputBufferLimit: CLIENT_OUTPUT_BUFFER_LIMIT;
clientQueryBufferLimit: CLIENT_QUERY_BUFFER_LIMIT;
maxmemoryClients: MAXMEMORY_CLIENTS;
protoMaxBulkLen: PROTO_MAX_BULK_LEN;
hz: HZ;
dynamicHz: DYNAMIC_HZ;
aofRewriteIncrementalFsync: AOF_REWIRTE_INCREMENTAL_FSYNC;
rdbSaveIncrementalFsync: RDB_SAVE_INCREMENTAL_FSYNC;
lfuLogFactor: LFU_LOG_FACTOR;
lufDecayTime: LFU_DECAY_TIME;
maxNewConnectionsPerCycle: MAX_NEW_CONNECTIONS_PER_CYCLE;
maxNewTlsConnectionsPerCycle: MAX_NEW_TLS_CONNECTIONS_PER_CYCLE;