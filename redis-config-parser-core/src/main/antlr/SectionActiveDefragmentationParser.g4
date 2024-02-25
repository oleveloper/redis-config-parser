parser grammar SectionActiveDefragmentationParser;

options { language = Java; tokenVocab = RedisLexer; }

activeDefragmentationStatements:
    activeDefragmentationStatement+;

activeDefragmentationStatement
    : activedefrag
    | activeDefragIgnoreBytes
    | activeDefragThresholdLower
    | activeDefragThresholdUpper
    | activeDefragCycleMin
    | activeDefragCycleMax
    | activeDefragMaxScanFields
    | demallocBgThread
    | serverCpulist
    | bioCpulist
    | aofRewriteCpulist
    | bgsaveCpulist
    | ignoreWarnings
    ;

activedefrag: ACTIVEDEFRAG;
activeDefragIgnoreBytes: ACTIVE_DEFRAG_IGNORE_BYTES;
activeDefragThresholdLower: ACTIVE_DEFRAG_THRESHOLD_LOWER;
activeDefragThresholdUpper: ACTIVE_DEFRAG_THRESHOLD_UPPER;
activeDefragCycleMin: ACTIVE_DEFRAG_CYCLE_MIN;
activeDefragCycleMax: ACTIVE_DEFRAG_CYCLE_MAX;
activeDefragMaxScanFields: ACTIVE_DEFRAG_MAX_SCAN_FIELDS;
demallocBgThread: JEMALLOC_BG_THREAD;
serverCpulist: SERVER_CPULIST;
bioCpulist: BIO_CPULIST;
aofRewriteCpulist: AOF_REWRITE_CPULIST;
bgsaveCpulist: BGSAVE_CPULIST;
ignoreWarnings: IGNORE_WARNINGS;