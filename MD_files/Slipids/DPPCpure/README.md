### System

72 molecules of POPC at full hydration without ions.

### How to run (Gromacs 4.6.6)

```
grompp -f mdnew.mdp -c DPPC_323K.gro -p sample.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.13287](http://dx.doi.org/10.5281/zenodo.13287)
