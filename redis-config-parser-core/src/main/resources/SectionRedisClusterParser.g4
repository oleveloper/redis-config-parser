parser grammar SectionRedisClusterParser;

options { language = Java; tokenVocab = RedisLexer; }

redisClusterStatements:
    redisClusterStatement+;

redisClusterStatement
    : clusterEnabled
    | clusterConfigFile
    | clusterNodeTimeout
    | clusterPort
    | clusterReplicaValidityFactor
    | clusterMigrationBarrier
    | clusterAllowReplicaMigration
    | clusterRequireFullCoverage
    | clusterReplicaNoFailover
    | clusterAllowReadsWhenDown
    | clusterAllowPubsubshardWhenDown
    | clusterLinkSendbufLimit
    | clusterAnnounceHostname
    | clusterAnnounceHumanNodename
    | clusterPreferredEndpointType

    | clusterAnnounceIp
    | clusterAnnounceTlsPort
    | clusterAnnouncePort
    | clusterAnnounceBusPort
    ;

// REDIS CLUSTER
clusterEnabled: CLUSTER_ENABLED;
clusterConfigFile: CLUSTER_CONFIG_FILE;
clusterNodeTimeout: CLUSTER_NODE_TIMEOUT;
clusterPort: CLUSTER_PORT;
clusterReplicaValidityFactor: CLUSTER_REPLICA_VALIDITY_FACTOR;
clusterMigrationBarrier: CLUSTER_MIGRATION_BARRIER;
clusterAllowReplicaMigration: CLUSTER_ALLOW_REPLICA_MIGRATION;
clusterRequireFullCoverage: CLUSTER_REQUIRE_FULL_COVERAGE;
clusterReplicaNoFailover: CLUSTER_REPLICA_NO_FAILOVER;
clusterAllowReadsWhenDown: CLUSTER_ALLOW_READS_WHEN_DOWN;
clusterAllowPubsubshardWhenDown: CLUSTER_ALLOW_PUBSUBSHARD_WHEN_DOWN;
clusterLinkSendbufLimit: CLUSTER_LINK_SENDBUF_LIMIT;
clusterAnnounceHostname: CLUSTER_ANNOUNCE_HOSTNAME;
clusterAnnounceHumanNodename: CLUSTER_ANNOUNCE_HUMAN_NODENAME;
clusterPreferredEndpointType: CLUSTER_PREFERRED_ENDPOINT_TYPE;

// CLUSTER DOCKER/NAT support
clusterAnnounceIp: CLUSTER_ANNOUNCE_IP;
clusterAnnounceTlsPort: CLUSTER_ANNOUNCE_TLS_PORT;
clusterAnnouncePort: CLUSTER_ANNOUNCE_PORT;
clusterAnnounceBusPort: CLUSTER_ANNOUNCE_BUS_PORT;