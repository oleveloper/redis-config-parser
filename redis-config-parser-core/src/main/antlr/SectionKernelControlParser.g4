parser grammar SectionKernelControlParser;

options { language = Java; tokenVocab = RedisLexer; }

kernelControlStatements:
    kernelControlStatement+;

kernelControlStatement
    : oomScoreAdj
    | oomScoreAdjValues
    | disableThp
    ;

oomScoreAdj: OOM_SCORE_ADJ;
oomScoreAdjValues: OOM_SCORE_ADJ_VALUES;
disableThp: DISABLE_THP;