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
	rm $(filename).aux
	rm $(filename).log
	rm $(filename).toc
	rm $(filename).out

distclean: 
	rm $(filename).pdf
	$(MAKE) clean
