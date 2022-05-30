# SPDX-License-Identifier: GPL-2.0-or-later
flags = -g -O2 -Wall -Werror -I src/ -I rbtree/src/ -D DEBUG_RBTREE
head  = src/segtree.h rbtree/src/rbtree.h
obj   = src/segtree.o rbtree/src/rbtree.o rbtree/src/debug.o
demo  = examples/selftest

all: $(demo)

%.o:%.c $(head)
	@ echo -e "  \e[32mCC\e[0m	" $@
	@ gcc -o $@ -c $< $(flags)

$(demo): $(obj) $(addsuffix .c,$(demo))
	@ echo -e "  \e[34mMKELF\e[0m	" $@
	@ gcc -o $@ $@.c $(obj) $(flags)

clean:
	@ rm -f $(obj) $(demo)
