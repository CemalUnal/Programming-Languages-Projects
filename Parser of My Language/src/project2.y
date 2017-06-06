%{
void yyerror(char *message);
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
%}

%start lines
%token NL NewLine
%token begin end
%token WHILE FOR
%token Integer String Char Float Boolean
%token Letter Digit ExpType SpaceChar TabChar
%token PLUS MINUS TIMES DIVIDE
%token lParenthesis rParenthesis cLeftParenthesis cRightParenthesis
%token Comma SemiColon
%token LessThan GreaterThan GreaterOrEqual Equal LessOrEqual NotEqual
%token ARRAY
%token ELSEIF
%token Function
%token FileOpen FileRead FileWrite FileClose Print
%token WordCount FindWord ReplaceWord CopyWord CutWord PasteWord

%nonassoc IF
%nonassoc ELSE

%%

lines				: line
     				| lines line
     				;

line				: NL
				| conditionalStatements NL
				| loop NL
				| assignment NL
    				| identifier NL
				| identifierDec NL
				| array NL
    				| functionTypes NL
    				;

conditionalStatements 	: If
				| Else
				;

If				: IF lParenthesis state rParenthesis NL begin codeFragment NL end %prec IF
				;

Else				: ELSE NL begin codeFragment NL end
				;

loop				: While
				| For
				;

While				: WHILE lParenthesis state rParenthesis NL begin codeFragment NL end
				;

For				: FOR lParenthesis assignment SemiColon state SemiColon assignment rParenthesis NL begin codeFragment NL end
				;

state				: Boolean
				| valueOrIdentifier comparators valueOrIdentifier
				;

valueOrIdentifier		: value
				| identifier
				;

codeFragment		: NL TabChar assignment
				| NL TabChar functionTypes
				| codeFragment NL TabChar assignment
				| codeFragment NL TabChar functionTypes
				;

functionTypes		: userDefinedFunctions
				| builtInFunctions
				| functionCall
				;

userDefinedFunctions	: Function SpaceChar identifier lParenthesis functionParamType rParenthesis NL begin codeFragment NL end
				;

builtInFunctions		: FileOpen SpaceChar functionTempOne
				| FileRead SpaceChar functionTempOne
				| FileWrite SpaceChar functionTempTwo
				| FileClose SpaceChar functionTempOne
				| WordCount SpaceChar functionTempOne
				| FindWord SpaceChar functionTempOne
				| ReplaceWord SpaceChar functionTempTwo
				| CopyWord SpaceChar functionTempOne
				| CutWord SpaceChar functionTempOne
				| PasteWord SpaceChar functionTempOne
				| PrintFunction
				;

PrintFunction		: Print SpaceChar functionTempOne
				| Print SpaceChar lParenthesis identifier rParenthesis
				;

functionCall		: identifier lParenthesis functionParamType rParenthesis
				;

functionParamType		: identifier
				| functionParamType Comma identifier
				;

functionTempOne		: lParenthesis String rParenthesis
				;

functionTempTwo		: lParenthesis String Comma String rParenthesis
				;

assignment			: NewLine
				| identifier '=' value
				| identifier '=' identifier
				| identifierDec '=' value
				| identifierDec '=' identifier
     	    			| assignment operator value
     	    			| assignment operator identifier
				;

array				: defaultArrayType
				| defaultArrayType '=' list
				;

defaultArrayType		: identifierDec lParenthesis integerOrDigit rParenthesis
				| identifier lParenthesis integerOrDigit rParenthesis
				;

list				: cLeftParenthesis listElements cRightParenthesis
				;

listElements		: value
				| listElements Comma value
				;

value				: Integer
				| Digit
				| String
				| Char
				| Float
				| Boolean
				;

identifierDec		: ExpType SpaceChar identifier
				;

identifier			: Letter
				| identifier Letter
				| identifier integerOrDigit
				;

integerOrDigit		: Integer
				| Digit
				;

operator			: PLUS
				| MINUS
				| TIMES
				| DIVIDE
				;

comparators			: LessThan
				| GreaterThan
				| GreaterOrEqual
				| Equal
				| LessOrEqual
				| NotEqual
				;

%%

void yyerror(char *message) {
	extern int lineno;
	fprintf(stderr, "At line %d error: %s\n", lineno, message);
	exit(1);
}

int main(){
	yyparse();
	printf("successfully compiled.\n");
	return 0;
}