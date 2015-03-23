#Makefile for the HGmodel manuscript


#Binaries used
LATEX = pdflatex -interaction=nonstopmode
BIBTEX = bibtex

#Manuscript
SRC_MANUSCRIPT = HGmodel_ACStemplate.tex
REFS = refs.bib
TARGET_MANUSCRIPT = $(SRC_MANUSCRIPT:.tex=.pdf)

#Cover Letter
SRC_COVER = coverLETTER.tex
TARGET_COVER = $(SRC_COVER:.tex=.pdf)

#Both
SRCs = $(SRC_COVER) $(SRC_MANUSCRIPT)
TARGETS = $(SRCs:%.tex=%.pdf)


all: $(TARGETS)

$(TARGET_COVER): $(SRC_COVER)
	-$(LATEX) $<

$(TARGET_MANUSCRIPT): $(SRC_MANUSCRIPT) $(REFS)
	-$(LATEX) $<
	-$(BIBTEX) $(<:.tex=.aux)
	-$(LATEX) $<
	-$(LATEX) $<

clean:
	rm $(TARGETS) $(SRCs:%.tex=%.aux) $(SRCs:%.tex=%.log) $(SRC_COVER:.tex=.out) $(SRC_MANUSCRIPT:.tex=.bbl) $(SRC_MANUSCRIPT:.tex=.blg) acs-$(SRC_MANUSCRIPT:.tex=.bib)

.PHONY: all clean



