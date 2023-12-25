#LaTeX用MakeFile
SLIDE = slide
HANDOUT = handout
LATEX = llmk
PREAMBLE = mypre.tex

.DEFAULT_GOAL = all

.PHONY: all slide handout
all: $(SLIDE).pdf $(HANDOUT).pdf 
slide: $(SLIDE).pdf
handout: $(HANDOUT).pdf

$(SLIDE).pdf: $(SLIDE).tex $(PREAMBLE) title.tex
	$(LATEX) $<

$(HANDOUT).pdf: $(HANDOUT).tex $(PREAMBLE) title.tex $(SLIDE).tex
	$(LATEX) $<

.PHONY: clean
clean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.blg

.PHONY: distclean
distclean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.blg *.pdf *.bbl *.log
