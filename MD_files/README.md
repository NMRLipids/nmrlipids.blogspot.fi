## Input Files

In this folder, you'll find all files required to relaunch the MD simulations.
Due to size limitations of GitHub and binary format, the trajectory files of this MD simulations are stored in our [Zenodo Organization](https://zenodo.org/collection/user-nmrlipids).

### Organization

This folder is divided according to the forcefield (charmm36, Berger, ...) and sub-divided according to the type of lipid (POPC, DLPC, DPPC, ...) and the condition (pure lipids, cholesterol content, ions, dehydration).

### Documentation

A README inside each relevant folder indicates:

- the system simulated
- how to perform the simulations
- where, when available, the trajectory files can be retrieved from our [Zenodo Organization](https://zenodo.org/collection/user-nmrlipids).

### List of simulated lipid bilayers

| Forcefield | Lipid | Nl   | Condition              | Path                      | DOI      |
|:----------:|:-----:|:----:|:----------------------:|:-------------------------:|:--------:|
| Charmm36   | POPC  | 72   |    -                   | charmm36/POPCpure/        | [Zenodo](http://dx.doi.org/10.5281/zenodo.13944) |
| Charmm36   | POPC  | 72   | NaCl (13, 26, 52, 78)  | charmm36/POPCnacl/        | - |
| Charmm36   | POPC  | 72   | Dehydration (15 w/l)   | charmm36/POPCdehydration/ | [Zenodo](http://dx.doi.org/10.5281/zenodo.13946) |
| Charmm36   | POPC  | 72   | Dehydration (7 w/l)    | charmm36/POPCdehydration/ | [Zenodo](http://dx.doi.org/10.5281/zenodo.13945) |
| Charmm36   | POPC  | 100  | Cholesterol (20%)      | charmm36/POPCchol/        | [Zenodo](http://dx.doi.org/10.5281/zenodo.14067) |
| Charmm36   | POPC  | 80   | Cholesterol (50%)      | charmm36/POPCchol/        | [Zenodo](http://dx.doi.org/10.5281/zenodo.14068) |