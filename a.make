bar = e.mk f.mk
include foo.mk *.mk $(bar)
include foo.mk a.mk b.mk e.mk f.mk
objects = $(wildcard *.o)
vpath %.c foo:bar
vpath %.c blish
.PHONY:clean
clean:
	rm *.o temp
