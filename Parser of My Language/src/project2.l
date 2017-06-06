%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
int lineno=1;
%}

letter [A-Za-z]
digit [0-9]
INTEGER {digit}+
FLOAT {digit}+(\.{digit}+)
BOOLEAN TRUE|FALSE
STRING (("\"")[^\"\n]*("\""))
CHAR (("'").("'"))
plusOperator \+
minusOperator \-
multiplyOperator \*
divideOperator \/
leftParenthesis \(
rightParenthesis \)
closedLeftParethesis \[
closedRightParethesis \]
lessThan ("<")
greaterThan (">")
greaterOrEqual (">=")
equal ("==")
lessOrEqual ("<=")
notEqual ("!=")
if ("IF")
else ("ELSE")
while ("WHILE")
for ("FOR")
array ("ARRAY")
BEGIN ("BEGIN")
END ("END")
FUNCTION ("FUNCTION")
FILEOPEN ("FILEOPEN")
FILEREAD ("FILEREAD")
FILEWRITE ("FILEWRITE")
FILECLOSE ("FILECLOSE")
WORDCOUNT ("WORDCOUNT")
FINDWORD ("FINDWORD")
REPLACEWORD ("REPLACEWORD")
COPYWORD ("COPYWORD")
CUTWORD ("CUTWORD")
PASTEWORD ("PASTEWORD")
PRINT ("PRINT")
comma \,
semiColon \;
NL NEWLINE
nl \n
expType INTEGER|STRING|CHAR|FLOAT|BOOLEAN
spaceChar [ ]
tabChar [\t]

%%
{spaceChar} {return SpaceChar;}
{tabChar} {return TabChar;}

{letter} {return Letter;}
{digit} {return Digit;}

{plusOperator} {return PLUS;}
{minusOperator} {return MINUS;}
{multiplyOperator} {return TIMES;}
{divideOperator} {return DIVIDE;}

{INTEGER} {return Integer;}
{FLOAT} {return Float;}
{BOOLEAN} {return Boolean;}
{STRING} {return String;}
{CHAR} {return Char;}

{if} {return IF;}
{else} {return ELSE;}
{while} {return WHILE;}
{for} {return FOR;}

{array} {return ARRAY;}

{leftParenthesis} {return lParenthesis;}
{rightParenthesis} {return rParenthesis;}
{closedLeftParethesis} {return cLeftParenthesis;}
{closedRightParethesis} {return cRightParenthesis;}

{comma} {return Comma;}
{semiColon} {return SemiColon;}

{lessThan} {return LessThan;}
{greaterThan} {return GreaterThan;}
{greaterOrEqual} {return GreaterOrEqual;}
{equal} {return Equal;}
{lessOrEqual} {return LessOrEqual;}
{notEqual} {return NotEqual;}

{FUNCTION} {return Function;}
{FILEOPEN} {return FileOpen;}
{FILEREAD} {return FileRead;}
{FILEWRITE} {return FileWrite;}
{FILECLOSE} {return FileClose;}
{WORDCOUNT} {return WordCount;}
{FINDWORD} {return FindWord;}
{REPLACEWORD} {return ReplaceWord;}
{COPYWORD} {return CopyWord;}
{CUTWORD} {return CutWord;}
{PASTEWORD} {return PasteWord;}
{PRINT} {return Print;}
{BEGIN} {return begin;}
{END} {return end;}

{expType} {return ExpType;}

{NL} {return NewLine;}

{nl} { lineno++; return NL; }
. { return yytext[0]; }

%%

int yywrap() { return 1; }
