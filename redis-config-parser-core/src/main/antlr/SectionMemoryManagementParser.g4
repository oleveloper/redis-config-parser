parser grammar SectionMemoryManagementParser;

options { language = Java; tokenVocab = RedisLexer; }

memoryManagementStatements:
    memoryManagementStatement+;

memoryManagementStatement
    : maxmemory
    | maxmemoryPolicy
    | maxmemorySamples
    | maxmemoryEvictionTenacity
    | replicaIgnoreMaxmemory
    | activeExpireEffort
    ;

maxmemory: MAXMEMORY;
maxmemoryPolicy: MAXMEMORY_POLICY;
maxmemorySamples: MAXMEMORY_SAMPLES;
maxmemoryEvictionTenacity: MAXMEMORY_EVICTION_TENACITY;
replicaIgnoreMaxmemory: REPLICA_IGNORE_MAXMEMORY;
activeExpireEffort: ACTIVE_EXPIRE_EFFORT;