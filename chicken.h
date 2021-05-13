/* For symbol and variable table */
#define IDLEN 31
#define SYMSIZE 100

/* For for-loop */
#define FOR_CONDITION(start, end, step) ((step < 0) ? (start > end) : (start < end))

/* Modes for getIndex() */
#define SET 0
#define GET 1

typedef enum
{
    typeCon,
    typeId,
    typeOpr
} nodeEnum; /* node types */

typedef enum
{
    typeNum,
    typeStr
} conEnum; /* constants types */

typedef struct
{
    conEnum type;
    union
    {
        double dValue; /* value of constant double */
        char *sValue;  /* value of constant string */
    };

} conNodeType; /* identifiers */

typedef struct
{
    int i;    /* subscript to sym array */
} idNodeType; /* operators */

typedef struct
{
    int oper;                /* operator */
    int nops;                /* number of operands */
    struct nodeTypeTag **op; /* operands */
} oprNodeType;

typedef struct nodeTypeTag
{
    nodeEnum type; /* type of node */
    union
    {
        conNodeType con; /* constants */
        idNodeType id;   /* identifiers */
        oprNodeType opr; /* operators */
    };
} nodeType;
