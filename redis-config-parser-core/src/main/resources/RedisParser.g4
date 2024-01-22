parser grammar RedisParser;

options { language = Java; tokenVocab = RedisLexer; }
import SectionIncludesParser, SectionModulesParser, SectionNetworkParser
     , SectionTLSParser, SectionGeneralParser, SectionSnapshottingParser
     , SectionReplicationParser, SectionSecurityParser;

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
    ;