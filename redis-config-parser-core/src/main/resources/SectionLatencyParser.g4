parser grammar SectionLatencyParser;

options { language = Java; tokenVocab = RedisLexer; }

latencyStatements:
    latencyStatement+;

latencyStatement
    : latencyMonitorThreshold
    | latencyTracking
    | latencyTrackingInfoPercentiles
    ;

latencyMonitorThreshold: LATENCY_MONITOR_THRESHOLD;
latencyTracking: LATENCY_TRACKING;
latencyTrackingInfoPercentiles: LATENCY_TRACKING_INFO_PERCENTILES;