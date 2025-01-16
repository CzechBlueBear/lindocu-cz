
ARTIFACT=book.html
STYLESHEET=common.css

PAGES=uvod.md apt.md cat.md cd.md cp.md curl.md file.md ls.md man.md rm.md rmdir.md touch.md

all: ${ARTIFACT}

.PHONY: all

${ARTIFACT}: ${PAGES} ${STYLESHEET} Makefile
	pandoc --from=markdown+multiline_tables-smart \
		--to=html ${PAGES} --css=${STYLESHEET} \
		--standalone --toc \
		-o ${ARTIFACT}
