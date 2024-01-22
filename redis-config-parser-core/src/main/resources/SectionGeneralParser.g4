parser grammar SectionGeneralParser;

options { language = Java; tokenVocab = RedisLexer; }

generalStatements:
    generalStatement+;

generalStatement
    : daemonize
    | supervised
    | pidfile
    | loglevel
    | logfile
    | syslogEnabled
    | syslogIdent
    | syslogFacility
    | crashLogEnabled
    | crashMemcheckEnabled
    | databases
    | alwaysShowLogo
    | setProcTitle
    | procTitleTemplate
    | localeCollate
    ;

daemonize: DAEMONIZE;
supervised: SUPERVISED;
pidfile: PIDFILE;
loglevel: LOGLEVEL;
logfile: LOGFILE;
syslogEnabled: SYSLOG_ENABLED;
syslogIdent: SYSLOG_IDENT;
syslogFacility: SYSLOG_FACILITY;
crashLogEnabled: CRASH_LOG_ENABLED;
crashMemcheckEnabled: CRASH_MEMCHECK_ENABLED;
databases: DATABASES;
alwaysShowLogo: ALWAYS_SHOW_LOGO;
setProcTitle: SET_PROC_TITLE;
procTitleTemplate: PROC_TITLE_TEMPLATE;
localeCollate: LOCALE_COLLATE;