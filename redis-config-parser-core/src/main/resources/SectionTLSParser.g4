parser grammar SectionTLSParser;

options { language = Java; tokenVocab = RedisLexer; }

tlsStatements:
    tlsStatement+;

tlsStatement
    : tlsPort
    | tlsCertFile
    | tlsKeyFile
    | tlsKeyFilePass
    | tlsClientCertFile
    | tlsClientKeyFile
    | tlsClientKeyFilePass
    | tlsDhParamsFile
    | tlsCaCertFile
    | tlsCaCertDir
    | tlsAuthClients
    | tlsReplication
    | tlsCluster
    | tlsProtocols
    | tlsCiphers
    | tlsCiphersuites
    | tlsPreferServerCiphers
    | tlsSessionCaching
    | tlsSessionCacheSize
    | tlsSessionCacheTimeout
    ;

tlsPort: TLS_PORT;
tlsCertFile: TLS_CERT_FILE;
tlsKeyFile: TLS_KEY_FILE;
tlsKeyFilePass: TLS_KEY_FILE_PASS;
tlsClientCertFile: TLS_CLIENT_CERT_FILE;
tlsClientKeyFile: TLS_CLIENT_KEY_FILE;
tlsClientKeyFilePass: TLS_CLIENT_KEY_FILE_PASS;
tlsDhParamsFile: TLS_DH_PARAMS_FILE;
tlsCaCertFile: TLS_CA_CERT_FILE;
tlsCaCertDir: TLS_CA_CERT_DIR;
tlsAuthClients: TLS_AUTH_CLIENTS;
tlsReplication: TLS_REPLICATION;
tlsCluster: TLS_CLUSTER;
tlsProtocols: TLS_PROTOCOLS;
tlsCiphers: TLS_CIPHERS;
tlsCiphersuites: TLS_CIPHERSUITES;
tlsPreferServerCiphers: TLS_PREFER_SERVER_CIPHERS;
tlsSessionCaching: TLS_SESSION_CACHING;
tlsSessionCacheSize: TLS_SESSION_CACHE_SIZE;
tlsSessionCacheTimeout: TLS_SESSION_CACHE_TIMEOUT;