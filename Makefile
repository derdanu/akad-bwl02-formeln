filename = bwl02-formeln
all: latex clean
latex:
	pdflatex $(filename)
	pdflatex $(filename)
view:
	if [ -f $(filename).pdf ]; then \
		evince $(filename).pdf; \
	else \
		$(MAKE) all ;\
		$(MAKE) view ;\
	fi
	
clean:
	git clean -fx
distclean:
	git checkout -f master
	$(MAKE) clean

