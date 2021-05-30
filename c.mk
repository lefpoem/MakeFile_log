bigoutput littleoutput : text.g
	generate text.g -$(subst output,,$@)>$@
#equivalent to this way $表示执行一个makefile函数 subst  $@ 指目标的集合
bigoutput : text.g
	generate text.g -big > bigoutput
littleoutput : text.g
	generate text.g -little > littleoutput
