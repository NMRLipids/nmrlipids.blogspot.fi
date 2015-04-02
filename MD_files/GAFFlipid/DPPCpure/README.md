### System

126 molecules of DPPC at full hydration without ions.

### How to run (Gromacs 4.5)

```
grompp -f mdrun.mdp -c dppcRUN.gro -p dpp.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.15550](http://dx.doi.org/10.5281/zenodo.15550)
