### System

128 molecules of POPC at full hydration without ions.

### How to run (Gromacs 4.5.X)

The file '.mdp' with '_dc' suffix is to simulate with dispersion correction applied to both energy and pressure whereas the file without this suffix do not use this correction.

```
grompp -f md.mdp -c start.gro -p topol.top -n index.ndx -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.13392](http://dx.doi.org/10.5281/zenodo.13392)
