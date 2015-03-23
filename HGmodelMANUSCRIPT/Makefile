#Makefile for the HGmodel manuscript


#Binaries used
LATEX = pdflatex -interaction=nonstopmode
BIBTEX = bibtex

#Filenames
SRC = HGmodel_ACStemplate.tex
REFS = refs.bib
TARGET = $(SRC:.tex=.pdf)


all: $(TARGET)

$(TARGET): $(SRC) $(REFS)
	-$(LATEX) $<
	-$(BIBTEX) $(<:.tex=.aux)
	-$(LATEX) $<
	-$(LATEX) $<

clean:
	rm $(TARGET) $(SRC:.tex=.aux) $(SRC:.tex=.log) $(SRC:.tex=.bbl) $(SRC:.tex=.blg) acs-$(SRC:.tex=.bib)

.PHONY: all clean



