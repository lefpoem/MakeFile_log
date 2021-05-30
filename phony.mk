#.PHONY 会执行同名目标代码
all : prog1 prog2 prog3 #target can depend
.PHONY:all
prog1 : prog1.o utils.o
	cc -o prog1 prog1.o utils.o
prog2 : prog2.o
	cc -o prog2 prog2.o
prog3 : prog3.o short.o utils.o
	cc -o prog3 prog3.o short.o utils.o
.PHONY: cleanall cleanobj cleandiff #phony can depend
cleanall : cleanobj cleandiff
	rm program
cleanobj : 
	rm *.obj
cleandiff :
	rm *.diff
