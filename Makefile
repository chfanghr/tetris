# Set CC and CFGLAGS in your local environment for a suitable
# compiler (gcc?) and CFLAGS (-Os -W -Wall -Werror).

VERSION        = 1.2.1
CFG_OPTS      ?= -DENABLE_SCORE -DENABLE_PREVIEW -DENABLE_HIGH_SCORE
CC            ?= @gcc
CPPFLAGS      += $(CFG_OPTS)

all: tetris

tetris.o: Makefile tetris.c tetris.h

clean:
	-@$(RM) tetris tetris.o *~


install: all
	@install -D -m 0755 tetris $(DESTDIR)/bin/tetris
	@touch /tmp/tetris.scores
	@touch ~/.tetris.scores
	@install -D -m 0664 -g games /tmp/tetris.scores $(DESTDIR)~/.tetris.scores

