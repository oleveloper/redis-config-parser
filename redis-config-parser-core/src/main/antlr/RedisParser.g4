parser grammar RedisParser;

@header {
    package com.oleveloper.redisparser;
}

options { language = Java; tokenVocab = RedisLexer; }
import SectionIncludesParser, SectionModulesParser, SectionNetworkParser
     , SectionTLSParser, SectionGeneralParser, SectionSnapshottingParser
     , SectionKeyTrackingParser, SectionReplicationParser, SectionSecurityParser
     , SectionClientsParser, SectionMemoryManagementParser, SectionLazyFreeingParser
     , SectionThreadedIOParser, SectionKernelControlParser, SectionAppendOnlyModeParser
     , SectionShutdownParser, SectionBlockingCommandsParser, SectionRedisClusterParser
     , SectionSlowLogParser, SectionLatencyParser, SectionEventNotificationParser
     , SectionAdvancedConfigParser, SectionActiveDefragmentationParser
     ;

configurations
    : configuration+
    ;

configuration
    : includesStatements
    | modulesStatements
    | networkStatements
    | tlsStatements
    | generalStatements
    | snapshottingStatements
    | replicationStatements
    | keyTrackingStatements
    | securityStatements
    | clientsStatements
    | memoryManagementStatements
    | lazyFreeingStatements
    | threadedIOStatements
    | kernelControlStatements
    | appendOnlyModeStatements
    | shutdownStatements
    | blockingCommandStatements
    | redisClusterStatements
    | slowLogStatements
    | latencyStatements
    | eventNotificationStatements
    | advancedConfigStatements
    | activeDefragmentationStatements
    ;