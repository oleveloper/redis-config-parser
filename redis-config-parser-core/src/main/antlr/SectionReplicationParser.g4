parser grammar SectionReplicationParser;

options { language = Java; tokenVocab = RedisLexer; }

replicationStatements:
    replicationStatement+;

replicationStatement
    : replicaof
    | masterauth
    | masteruser
    | replicaServerStaleDate
    | replicaReadOnly
    | replDisklessSync
    | replDisklessSyncDelay
    | replDisklessSyncReplicas
    | replDisklessLoad
    | replPingReplicaPeriod
    | replTimeout
    | replDisableTcpNodelay
    | replBacklogSize
    | replBacklogTtl
    | replicaPriority
    | propagationErrorBehavior
    | replicaIgnoreDiskWriteErrors
    | replicaAnnounced
    | minReplicasToWrite
    | minReplicasMaxLag
    | replicaAnnounceIp
    | replicaAnnouncePort
    ;

replicaof: REPLICAOF;
masterauth: MASTERAUTH;
masteruser: MASTERUSER;
replicaServerStaleDate: REPLICA_SERVE_STALE_DATE;
replicaReadOnly: REPLICA_READ_ONLY;
replDisklessSync: REPL_DISKLESS_SYNC;
replDisklessSyncDelay: REPL_DISKLESS_SYNC_DELAY;
replDisklessSyncReplicas: REPL_DISKLESS_SYNC_MAX_REPLICAS;
replDisklessLoad: REPL_DISKLESS_LOAD;
replPingReplicaPeriod: REPL_PING_REPLICA_PERIOD;
replTimeout: REPL_TIMEOUT;
replDisableTcpNodelay: REPL_DISABLE_TCP_NODELAY;
replBacklogSize: REPL_BACKLOG_SIZE;
replBacklogTtl: REPL_BACKLOG_TTL;
replicaPriority: REPLICA_PRIORITY;
propagationErrorBehavior: PROPAGATION_ERROR_BEHAVIOR;
replicaIgnoreDiskWriteErrors: REPLICA_IGNORE_DISK_WRITE_ERRORS;
replicaAnnounced: REPLICA_ANNOUNCED;
minReplicasToWrite: MIN_REPLICAS_TO_WRITE;
minReplicasMaxLag: MIN_REPLICAS_MAX_LAG;
replicaAnnounceIp: REPLICA_ANNOUNCE_IP;
replicaAnnouncePort: REPLICA_ANNOUNCE_PORT;