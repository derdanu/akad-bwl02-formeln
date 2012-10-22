filename = bwl02-formeln
all: latex clean
latex:
	pdflatex $(filename)
	pdflatex $(filename)
view:
	evince $(filename).pdf
clean:
	rm $(filename).aux
	rm $(filename).log
	rm $(filename).toc
	rm $(filename).out
