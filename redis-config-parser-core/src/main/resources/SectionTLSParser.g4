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

tlsPort: TLS_PORT INT;
tlsCertFile: TLS_CERT_FILE (FILE_PATH | FILE_NAME);
tlsKeyFile: TLS_KEY_FILE (FILE_PATH | FILE_NAME);
tlsKeyFilePass: TLS_KEY_FILE_PASS (.)+?;
tlsClientCertFile: TLS_CLIENT_CERT_FILE (FILE_PATH | FILE_NAME);
tlsClientKeyFile: TLS_CLIENT_KEY_FILE (FILE_PATH | FILE_NAME);
tlsClientKeyFilePass: TLS_CLIENT_KEY_FILE_PASS (.)+?;
tlsDhParamsFile: TLS_DH_PARAMS_FILE (FILE_PATH | FILE_NAME);
tlsCaCertFile: TLS_CA_CERT_FILE FILE_NAME;
tlsCaCertDir: TLS_CA_CERT_DIR DIR_PATH;
tlsAuthClients: TLS_AUTH_CLIENTS (YESNO | OPTIONAL); //TODO
tlsReplication: TLS_REPLICATION YESNO;
tlsCluster: TLS_CLUSTER YESNO;
tlsProtocols: TLS_PROTOCOLS;
tlsCiphers: TLS_CIPHERS;
tlsCiphersuites: TLS_CIPHERSUITES;
tlsPreferServerCiphers: TLS_PREFER_SERVER_CIPHERS;
tlsSessionCaching: TLS_SESSION_CACHING;
tlsSessionCacheSize: TLS_SESSION_CACHE_SIZE;
tlsSessionCacheTimeout: TLS_SESSION_CACHE_TIMEOUT;