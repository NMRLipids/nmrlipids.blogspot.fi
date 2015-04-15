### System

128 molecules of DPPC at full hydration without ions.

### How to run (Gromacs 4.5.X)

```
grompp -f mdrun.mdp -c popcRUN2.gro -p popc.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.15548](http://dx.doi.org/10.5281/zenodo.15548)
