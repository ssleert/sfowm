# sfowm - fork of dwm
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c sfowm.c util.c
OBJ = ${SRC:.c=.o}

all: options sfowm

options:
	@echo sfowm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	cp config.def.h $@

sfowm: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f sfowm ${OBJ} sfowm-${VERSION}.tar.gz

dist: clean
	mkdir -p sfowm-${VERSION}
	cp -R LICENSE Makefile README config.def.h config.mk\
		sfowm.1 drw.h util.h ${SRC} sfowm.png transient.c sfowm-${VERSION}
	tar -cf sfowm-${VERSION}.tar sfowm-${VERSION}
	gzip sfowm-${VERSION}.tar
	rm -rf sfowm-${VERSION}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f sfowm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/sfowm
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < sfowm.1 > ${DESTDIR}${MANPREFIX}/man1/sfowm.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/sfowm.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/sfowm\
		${DESTDIR}${MANPREFIX}/man1/sfowm.1

.PHONY: all options clean dist install uninstall
