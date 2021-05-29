objects = main.o kbd.o display.o \
	insert.o search.o files.o utils.o
edit : $(objects)
	cc -o edit $(objects)
main.o : main.c defs.h
	cc -c main.c
kbd.o : defs.h command.h
display.o : defs.h buffer.h
insert.o : defs.h buffer.h
search.o : defs.h buffer.h
files.o : defs.h buffer.h command.h
utils.o : defs.h
.phony : clean
clean :
	rm edit $(objects)
//second way
$(objects) : defs.h   //merger dependencies
kib.o command.o files.o : command.h
display.o insert.o search.p files.o : buffer.h
