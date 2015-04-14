### System

512 molecules of DPPC at full hydration without ions.

### How to run (Gromacs 4.5.X)

```
grompp -f md.mdp -c start.gro -p topol.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.13393](http://dx.doi.org/10.5281/zenodo.13393)
