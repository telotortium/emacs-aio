.POSIX:
EMACS = emacs

compile: aio-iter2.elc aio-iter2-test.elc

aio-iter2.elc: aio-iter2.el
aio-iter2-test.elc: aio-iter2-test.el aio-iter2.elc

clean:
	rm -f aio-iter2.elc aio-iter2-test.elc

check: aio-iter2-test.elc
	$(EMACS) -batch -Q -L . -l aio-iter2-test.elc -f ert-run-tests-batch

.SUFFIXES: .el .elc
.el.elc:
	$(EMACS) -batch -Q -L . -f batch-byte-compile $<
