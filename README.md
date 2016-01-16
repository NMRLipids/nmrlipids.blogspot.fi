# Towards atomistic resolution structure of phosphatidylcholine glycerol backbone and choline headgroup at different ambient conditions

[![DOI](https://img.shields.io/badge/doi-%2010.1021%2Facs.jpcb.5b04878-blue.svg)](https://doi.org/10.1021/acs.jpcb.5b04878)

This repository contains the research about the simulations of phosphatidylcholine (PC) lipid bilayers with 13 different atomistic models.
These have been compared with experiments (in fully hydrated conditions) in terms of C--H bond vector order parameters for the glycerol backbone and choline headgroups.

This work has been published in The Journal of Physical Chemistry B [https://doi.org/10.1021/acs.jpcb.5b04878](https://doi.org/10.1021/acs.jpcb.5b04878).

The repository contains all data, input files, figures and code associated with the publication. Furthermore, almost all simulation trajectories are stored in the [Zenodo community](https://zenodo.org/collection/user-nmrlipids) called **Nmrlipids** which has became the most extensive publicly available collection of molecular dynamics simulation trajectories of lipid bilayers.


## Open collaboration

This work has been done as an open collaboration by using [nmrlipids.blogspot.fi](http://nmrlipids.blogspot.fi) as a communication platform.
The present approach was started by publishing a manuscript [1] discussing the glycerol backbone and choline structures in a Berger based model (the most used molecular dynamics simulation model for lipid bilayers).
After publishing the initial manuscript, the open invitation for further contributions and discussion through the blog was presented.
All the scientific contributions are done publicly through the blog and all contributors were offered coauthorship according to the [guidelines](http://nmrlipids.blogspot.fi/2013/07/on-credits.html) defined in the beginning of the project. The acception of authorship is based on the self-assesment of the authors' scientific contribution to the project.


## Organization of the repository

This repository structure has been designed for this kind of projects during the progress of this work,
see [Issue 17](https://github.com/NMRLipids/nmrlipids.blogspot.fi/issues/17), [Issue 15](https://github.com/NMRLipids/nmrlipids.blogspot.fi/issues/15)
and the [workflow](http://nmrlipids.blogspot.fi/p/how-to-follow-and-make-contributions.html) page from the blog.
However, in practise the organization of the whole repository has not been completed,
thus some files may not be located in their correct places.

#### DATAreportedINblog

The folder contains all results data about the order parameter of glycerol backbone and choline headgroups. See the `README` for details.

#### Fig

It contains all the figures used in the manuscript and, when available, the script used to produce it from the data in `DATAreportedINblog`.
See the `README` for details.

#### HGmodelMANUSCRIPT

It contains all sources files (`tex`, `bib`, `Makefile`) to produce the manuscript. See the `README` for details.


## References

[1] Ollila, O. H. S. Response of the hydrophilic part of lipid membranes to changing conditions - a critical comparison of simulations to experiments. 2013; [http://arxiv.org/abs/1309.2131v1](http://arxiv.org/abs/1309.2131v1)

