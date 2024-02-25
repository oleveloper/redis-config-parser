parser grammar SectionSecurityParser;

options { language = Java; tokenVocab = RedisLexer; }

securityStatements:
    securityStatement+;

securityStatement
    : user
    | acllogMaxLen
    | aclfile
    | requirepass
    | aclPubsubDefault
    | renameCommand
    ;

user: USER;
acllogMaxLen: ACLLOG_MAX_LEN;
aclfile: ACLFILE;
requirepass: REQUIREPASS;
aclPubsubDefault: ACL_PUBSUB_DEFAULT;
renameCommand: RENAME_COMMAND;