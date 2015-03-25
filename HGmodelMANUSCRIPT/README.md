
## Manuscript in Latex

**Title:** Towards atomistic resolution structure of phosphatidylcholine glycerol backbone and choline headgroup at different ambient conditions

**ArXiv version:** [http://arxiv.org/abs/1309.2131v2](http://arxiv.org/abs/1309.2131v2)


## Files

* `HGmodel_ACStemplate.tex` is to the JACS submission version.
* `coverLETTER.tex` is the cover letter for JACS submission.
* `refs.bib` is the bibliography file.


* `OLDversions` folder contains old versions of the manuscript and the related figures.

## Generate the pdf

### Dependencies for compiling tex 
* **mhchem.sty** (package `texlive-science` in Debian)
* **achemso.sty** (package `texlive-latex-extra` in Debian)
* **easy-toto.sty** already present in the folder. Downloaded from here: [http://mirrors.ctan.org/macros/latex/contrib/easy-todo/easy-todo.sty](http://mirrors.ctan.org/macros/latex/contrib/easy-todo/easy-todo.sty)


### Compilation

Just run the Makefile: `make`


## How to contribute?

1. Fork this repository
2. Add your contribution by modifying the files (either `HGmodel_ACStemplate.tex` or `coverLETTER.tex`)
3. Commit your modifications
4. Make a pull-request