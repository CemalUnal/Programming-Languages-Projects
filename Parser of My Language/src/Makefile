all:	run

run:	parser
	./parser < test.txt

parser: lex.yy.c y.tab.c
	gcc -g lex.yy.c y.tab.c -o parser

lex.yy.c: y.tab.c project2.l
	lex project2.l

y.tab.c: project2.y
	yacc -d project2.y

clean: 
	rm -f lex.yy.c y.tab.c y.tab.h parser

.PHONY: all run
