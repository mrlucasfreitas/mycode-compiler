exec:
	@flex ./src/MyCode-lex.l
	@gcc ./lex.yy.c
	@./a.out