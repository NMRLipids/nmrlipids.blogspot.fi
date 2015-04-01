### System

72 molecules of POPC at full hydration without ions.

### How to run

```
grompp -f mdrun.mdp -c popcRUN3.gro -p popc.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.13944](http://dx.doi.org/10.5281/zenodo.13944)