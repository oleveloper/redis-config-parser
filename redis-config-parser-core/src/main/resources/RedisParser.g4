parser grammar RedisParser;

options { language = Java; tokenVocab = RedisLexer; }
import SectionIncludesParser, SectionModulesParser, SectionNetworkParser
     , SectionTLSParser, SectionGeneralParser, SectionSnapshottingParser
     , SectionReplicationParser, SectionSecurityParser, SectionClientsParser
     , SectionMemoryManagementParser, SectionAppendOnlyModeParser;

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
    | securityStatements
    | clientsStatements
    | memoryManagementStatements
    | appendOnlyModeStatements
    ;