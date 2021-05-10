%{
    #include <stdlib.h>
    #include <string.h>
    #include "chicken.h"
    #include "chicken.tab.h"

    void yyerror(char *s);
    int lineno = 0;
%}

ID  [a-zA-Z][a-z0-9A-Z_]*
EXP [Ee][-+]?[0-9]+

%%
"#".*   /* Single-line comment */

[0-9]+|[0-9]+"."[0-9]*{EXP}?|"."?[0-9]+{EXP}? {
    yylval.dValue = atof(yytext);
    return NUMBER;
}

\"[^"\n]*["\n] {
    yylval.sValue = strdup(yytext+1);
    if (yylval.sValue[yyleng-2] != '"')
        yyerror("improperly terminated string");
    else {
        yylval.sValue[yyleng-2] = 0;
        return STRING;
    }
}

[-()<>=+*/%,;{}] {
    return *yytext;
}

":="    return ASSIGN;
">="    return GE;
"<="    return LE;
"!="    return NE;
"while" return WHILE;
"if"    return IF;
"else"  return ELSE;
"then"  return THEN;
"and"   return AND;
"or"    return OR;
"not"   return NOT;

"print" return PRINT;
"scan"  return SCAN;

"random"    return RANDOM;

{ID} {
    yylval.vName = strdup(yytext);
    return VARIABLE;
}

[ \t]

\n { ++lineno; }

. {
    yyerror("Unknown character");
    exit(1);
}
%%

int yywrap(void) {
    return 1;
}

void yyerror(char *s) {
    fprintf(stdout, "line %d: %s\n", lineno, s);
}