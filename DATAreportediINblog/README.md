## Data Folder

In this folder, you will find the choline and glycerol backbone order parameters from simulations reported in the [nmrlipids.blogspot.fi](http://nmrlipids.blogspot.fi), together with the available experimental data.
It is sorted by the type of the lipids (POPC, DMPC, etc).


## Data files

The name of  `dat` files is usually composed of  `ForceField`-`Temperature`_blogged-`Date`.dat ( for example `DOPC/CHARMM36-303K_blogged-15-01-14.dat`) where:
- `Forcefield`: the name of the forcefield used
- `Temperature`: temperature used in the simulation
- blogged: means that the values have been posted on [nmrlipids.blogspot.fi](http://nmrlipids.blogspot.fi)
- `Date`: the date of the blog post

For experiment data, it's composed of EXP-`1st authorYear`.dat (for example 'POPC/EXP-Ferreira2013.dat') where:
- `1st author`: the 1st author of the publication
- `Year`: year of publication

Furthermore, in each blogged data file, additional information can be found in commentaries (lines started by `#`) like:
- the link to the blog post and the date of the post
- the name of the contributor
- a brief description of the system simulated
- the time simulated and the time analyzed
- The link to the trajectory at [zenodo](https://zenodo.org/)
