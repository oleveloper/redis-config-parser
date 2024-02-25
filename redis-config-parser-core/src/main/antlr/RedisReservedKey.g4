lexer grammar RedisReservedKey;

PORT: 'port';

// INCLUDES
INCLUDE: 'include';

// MODULES
LOADMODULE: 'loadmodule';

// NETWORK
BIND: 'bind';
BIND_SOURCE_ADDR: 'bind-source-addr';
PROTECTED_MODE: 'protected-mode';
ENABLE_PROTECTED_CONFIGS: 'enable-protected-configs';
ENABLE_DEBUG_COMMAND: 'enable-debug-command';
ENABLE_MODULE_COMMAND: 'enable-module-command';
TCP_BACKLOG: 'tcp-backlog';
UNIXSOCKET: 'unixsocket';
UNIXSOCKETPERM: 'unixsocketperm';
TIMEOUT: 'timeout';
TCP_KEEPALIVE: 'tcp-keepalive';
SOCKET_MARK_ID: 'socket-mark-id';

// TLS/SSL
TLS_PORT: 'tls-port';
TLS_CERT_FILE: 'tls-cert-file';
TLS_KEY_FILE: 'tls-key-file';
TLS_KEY_FILE_PASS: 'tls-key-file-pass';
TLS_CLIENT_CERT_FILE: 'tls-client-cert-file';
TLS_CLIENT_KEY_FILE: 'tls-client-key-file';
TLS_CLIENT_KEY_FILE_PASS: 'tls-client-key-file-pass';
TLS_DH_PARAMS_FILE: 'tls-dh-params-file';
TLS_CA_CERT_FILE: 'tls-ca-cert-file';
TLS_CA_CERT_DIR: 'tls-ca-cert-dir';
TLS_AUTH_CLIENTS: 'tls-auth-clients';
TLS_REPLICATION: 'tls-replication';
TLS_CLUSTER: 'tls-cluster';
TLS_PROTOCOLS: 'tls-protocols';
TLS_CIPHERS: 'tls-ciphers';
TLS_CIPHERSUITES: 'tls-ciphersuites';
TLS_PREFER_SERVER_CIPHERS: 'tls-prefer-server-ciphers';
TLS_SESSION_CACHING: 'tls-session-caching';
TLS_SESSION_CACHE_SIZE: 'tls-session-cache-size';
TLS_SESSION_CACHE_TIMEOUT: 'tls-session-cache-timeout';

// GENERAL
DAEMONIZE: 'daemonize';
SUPERVISED: 'supervised';
PIDFILE: 'pidfile';
LOGLEVEL: 'loglevel';
LOGFILE: 'logfile';
SYSLOG_ENABLED: 'syslog-enabled';
SYSLOG_IDENT: 'syslog-ident';
SYSLOG_FACILITY: 'syslog-facility';
CRASH_LOG_ENABLED: 'crash-log-enabled';
CRASH_MEMCHECK_ENABLED: 'crash-memcheck-enabled';
DATABASES: 'databases';
ALWAYS_SHOW_LOGO: 'always-show-logo';
SET_PROC_TITLE: 'set-proc-title';
PROC_TITLE_TEMPLATE: 'proc-title-template';
LOCALE_COLLATE: 'locale-collate';

// SNAPSHOTTING
SAVE: 'save';
STOP_WRITES_ON_BGSAVE_ERROR: 'stop-writes-on-bgsave-error';
RDBCOMPRESSION: 'rdbcompression';
RDBCHECKSUM: 'rdbchecksum';
SANITIZE_DUMP_PAYLOAD: 'sanitize-dump-payload';
DBFILENAME: 'dbfilename';
RDB_DEL_SYNC_FILES: 'rdb-del-sync-files';
DIR: 'dir';

// REPLICATION
REPLICAOF: 'replicaof';
MASTERAUTH: 'masterauth';
MASTERUSER: 'masteruser';
REPLICA_SERVE_STALE_DATE: 'replica-serve-stale-data';
REPLICA_READ_ONLY: 'replica-read-only';
REPL_DISKLESS_SYNC: 'repl-diskless-sync';
REPL_DISKLESS_SYNC_DELAY: 'repl-diskless-sync-delay';
REPL_DISKLESS_SYNC_MAX_REPLICAS: 'repl-diskless-sync-max-replicas';
REPL_DISKLESS_LOAD: 'repl-diskless-load';
REPL_PING_REPLICA_PERIOD: 'repl-ping-replica-period';
REPL_TIMEOUT: 'repl-timeout';
REPL_DISABLE_TCP_NODELAY: 'repl-disable-tcp-nodelay';
REPL_BACKLOG_SIZE: 'repl-backlog-size';
REPL_BACKLOG_TTL: 'repl-backlog-ttl';
REPLICA_PRIORITY: 'replica-priority';
PROPAGATION_ERROR_BEHAVIOR: 'propagation-error-behavior';
REPLICA_IGNORE_DISK_WRITE_ERRORS: 'replica-ignore-disk-write-errors';
REPLICA_ANNOUNCED: 'replica-announced';
MIN_REPLICAS_TO_WRITE: 'min-replicas-to-write';
MIN_REPLICAS_MAX_LAG: 'min-replicas-max-lag';
REPLICA_ANNOUNCE_IP: 'replica-announce-ip';
REPLICA_ANNOUNCE_PORT: 'replica-announce-port';

// KEYS TRACKING
TRACKING_TABLE_MAX_KEYS: 'tracking-table-max-keys';

// SECURITY
USER: 'user';
ACLLOG_MAX_LEN: 'acllog-max-len';
ACLFILE: 'aclfile';
REQUIREPASS: 'requirepass';
ACL_PUBSUB_DEFAULT: 'acl-pubsub-default';
RENAME_COMMAND: 'rename-command';

// CLIENTS
MAXCLIENTS: 'maxclients';

// MEMORY MANAGEMENT
MAXMEMORY: 'maxmemory';
MAXMEMORY_POLICY: 'maxmemory-policy';
MAXMEMORY_SAMPLES: 'maxmemory-samples';
MAXMEMORY_EVICTION_TENACITY: 'maxmemory-eviction-tenacity';
REPLICA_IGNORE_MAXMEMORY: 'replica-ignore-maxmemory';
ACTIVE_EXPIRE_EFFORT: 'active-expire-effort';

// LAZY FREEING
LAZYFREE_LAZY_EVICTION: 'lazyfree-lazy-eviction';
LAZYFREE_LAZY_EXPIRE: 'lazyfree-lazy-expire';
LAZYFREE_LAZY_SERVER_DEL: 'lazyfree-lazy-server-del';
REPLICA_LAZY_FLUSH: 'replica-lazy-flush';
LAZYFREE_LAZY_USER_DEL: 'lazyfree-lazy-user-del';
LAZYFREE_LAZY_USER_FLUSH: 'lazyfree-lazy-user-flush';

// THREADED I/O
IO_THREADS: 'io-threads';
IO_THREADS_DO_READS: 'io-threads-do-reads';

// KERNEL OOM CONTROL
OOM_SCORE_ADJ: 'oom-score-adj';
OOM_SCORE_ADJ_VALUES: 'oom-score-adj-values';

// KERNEL transport hugepage CONTROL
DISABLE_THP: 'disable-thp';

// APPEND ONLY MODE
APPENDONLY: 'appendonly';
APPENDFILENAME: 'appendfilename';
APPENDDIRNAME: 'appenddirname';
APPENDFSYNC: 'appendfsync';
NO_APPENDFSYNC_ON_REWRITE: 'no-appendfsync-on-rewrite';
AUTO_AOF_REWRITE_PERCENTAGE: 'auto-aof-rewrite-percentage';
AUTO_AOF_REWRITE_MIN_SIZE: 'auto-aof-rewrite-min-size';
AOF_LOAD_TRUNCATED: 'aof-load-truncated';
AOF_USE_RDB_PREAMBLE: 'aof-use-rdb-preamble';
AOF_TIMESTAMP_ENABLED: 'aof-timestamp-enabled';

// SHUTDOWN
SHUTDOWN_TIMEOUT: 'shutdown-timeout';
SHUTDOWN_ON_SIGINT: 'shutdown-on-sigint';
SHUTDOWN_ON_SIGTERM: 'shutdown-on-sigterm';

// NON-DETERMINISTIC LONG BLOCKING COMMANDS
LUA_TIME_LIMIT: 'lua-time-limit';
BUSY_REPLY_THRESHOLD: 'busy-reply-threshold';

// REDIS CLUSTER
CLUSTER_ENABLED: 'cluster-enabled';
CLUSTER_CONFIG_FILE: 'cluster-config-file';
CLUSTER_NODE_TIMEOUT: 'cluster-node-timeout';
CLUSTER_PORT: 'cluster-port';
CLUSTER_REPLICA_VALIDITY_FACTOR: 'cluster-replica-validity-factor';
CLUSTER_MIGRATION_BARRIER: 'cluster-migration-barrier';
CLUSTER_ALLOW_REPLICA_MIGRATION: 'cluster-allow-replica-migration';
CLUSTER_REQUIRE_FULL_COVERAGE: 'cluster-require-full-coverage';
CLUSTER_REPLICA_NO_FAILOVER: 'cluster-replica-no-failover';
CLUSTER_ALLOW_READS_WHEN_DOWN: 'cluster-allow-reads-when-down';
CLUSTER_ALLOW_PUBSUBSHARD_WHEN_DOWN: 'cluster-allow-pubsubshard-when-down';
CLUSTER_LINK_SENDBUF_LIMIT: 'cluster-link-sendbuf-limit';
CLUSTER_ANNOUNCE_HOSTNAME: 'cluster-announce-hostname';
CLUSTER_ANNOUNCE_HUMAN_NODENAME: 'cluster-announce-human-nodename';
CLUSTER_PREFERRED_ENDPOINT_TYPE: 'cluster-preferred-endpoint-type';

// CLUSTER DOCKER/NAT support
CLUSTER_ANNOUNCE_IP: 'cluster-announce-ip';
CLUSTER_ANNOUNCE_TLS_PORT: 'cluster-announce-tls-port';
CLUSTER_ANNOUNCE_PORT: 'cluster-announce-port';
CLUSTER_ANNOUNCE_BUS_PORT: 'cluster-announce-bus-port';

// SLOW LOG
SLOWLOG_LOG_SLOWER_THAN: 'slowlog-log-slower-than';
SLOWLOG_MAX_LEN: 'slowlog-max-len';

// LATENCY MONITOR
LATENCY_MONITOR_THRESHOLD: 'latency-monitor-threshold';

// LATENCY TRACKING
LATENCY_TRACKING: 'latency-tracking';
LATENCY_TRACKING_INFO_PERCENTILES: 'latency-tracking-info-percentiles';

// EVENT NOTIFICATION
NOTIFY_KEYSPACE_EVENTS: 'notify-keyspace-events';

// ADVANCED CONFIG
HASH_MAX_LISTPACK_ENTRIES: 'hash-max-listpack-entries';
HASH_MAX_LISTPACK_VALUE: 'hash-max-listpack-value';
LIST_MAX_LISTPACK_SIZE: 'list-max-listpack-size';
LIST_COMPRESS_DEPTH: 'list-compress-depth';
SET_MAX_INTSET_ENTRIES: 'set-max-intset-entries';
SET_MAX_LISTPACK_ENTRIES: 'set-max-listpack-entries';
SET_MAX_LISTPACK_VALUE: 'set-max-listpack-value';
ZSET_MAX_LISTPACK_ENTRIES: 'zset-max-listpack-entries';
ZSET_MAX_LISTPACK_VALUE: 'zset-max-listpack-value';
HLL_SPARSE_MAX_BYTES: 'hll-sparse-max-bytes';
STREAM_NODE_MAX_BYTES: 'stream-node-max-bytes';
STREAM_NODE_MAX_ENTRIES: 'stream-node-max-entries';
ACTIVEREHASHING: 'activerehashing';
CLIENT_OUTPUT_BUFFER_LIMIT: 'client-output-buffer-limit';
CLIENT_QUERY_BUFFER_LIMIT: 'client-query-buffer-limit';
MAXMEMORY_CLIENTS: 'maxmemory-clients';
PROTO_MAX_BULK_LEN: 'proto-max-bulk-len';
HZ: 'hz';
DYNAMIC_HZ: 'dynamic-hz';
AOF_REWIRTE_INCREMENTAL_FSYNC: 'aof-rewrite-incremental-fsync';
RDB_SAVE_INCREMENTAL_FSYNC: 'rdb-save-incremental-fsync';
LFU_LOG_FACTOR: 'lfu-log-factor';
LFU_DECAY_TIME: 'lfu-decay-time';
MAX_NEW_CONNECTIONS_PER_CYCLE: 'max-new-connections-per-cycle';
MAX_NEW_TLS_CONNECTIONS_PER_CYCLE: 'max-new-tls-connections-per-cycle';

// ACTIVE DEFRAGMENTATION
ACTIVEDEFRAG: 'activedefrag';
ACTIVE_DEFRAG_IGNORE_BYTES: 'active-defrag-ignore-bytes';
ACTIVE_DEFRAG_THRESHOLD_LOWER: 'active-defrag-threshold-lower';
ACTIVE_DEFRAG_THRESHOLD_UPPER: 'active-defrag-threshold-upper';
ACTIVE_DEFRAG_CYCLE_MIN: 'active-defrag-cycle-min';
ACTIVE_DEFRAG_CYCLE_MAX: 'active-defrag-cycle-max';
ACTIVE_DEFRAG_MAX_SCAN_FIELDS: 'active-defrag-max-scan-fields';
JEMALLOC_BG_THREAD: 'jemalloc-bg-thread';
SERVER_CPULIST: 'server-cpulist';
BIO_CPULIST: 'bio-cpulist';
AOF_REWRITE_CPULIST: 'aof-rewrite-cpulist';
BGSAVE_CPULIST: 'bgsave-cpulist';
IGNORE_WARNINGS: 'ignore-warnings';