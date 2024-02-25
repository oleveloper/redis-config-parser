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

daemonize: DAEMONIZE YESNO;
supervised: SUPERVISED LETTERS;
pidfile: PIDFILE FILE_PATH;
loglevel: LOGLEVEL LETTERS;
logfile: LOGFILE FILE_PATH_WITH_QUOTE_OPTIONAL;
syslogEnabled: SYSLOG_ENABLED YESNO;
syslogIdent: SYSLOG_IDENT (.)+?;
syslogFacility: SYSLOG_FACILITY LOCAL_NUM;
crashLogEnabled: CRASH_LOG_ENABLED YESNO;
crashMemcheckEnabled: CRASH_MEMCHECK_ENABLED YESNO;
databases: DATABASES MINUS? INT;
alwaysShowLogo: ALWAYS_SHOW_LOGO YESNO;
setProcTitle: SET_PROC_TITLE YESNO;
procTitleTemplate: PROC_TITLE_TEMPLATE; //TODO
localeCollate: LOCALE_COLLATE;