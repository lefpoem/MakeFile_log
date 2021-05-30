object = foo.o bar.o
all : $(object)
$(object): %.o: %.c
	$(cc) -c $(CFLAGS) $< -o $@
files = foo.elc bar.o lose.o
$(filter %.c,$(files)): %.o: %.c #过滤$(files)集
	$(cc) -c $(CFLAGS) $< -o $@
$(filter %.elc,$(files)): %.elc: %.el
	emacs -f batch-byte-compile $<
cc -M main.c #自动生成依赖,可能会包含其他标准库文件 cc -MM main.c
