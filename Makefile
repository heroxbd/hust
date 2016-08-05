
TEX = pdflatex -shell-escape -interaction=batchmode -file-line-error
BIB = bibtex

.PHONY: all

all: portage.pdf

portage.pdf: portage.tex portage.bib
	latexmk -f -gg -pdf -pdflatex="$(TEX)" $<

clean:
	latexmk -c

dist-clean:
	latexmk -C && rm portage.bbl
