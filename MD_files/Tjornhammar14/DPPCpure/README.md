### System

144 molecules of DPPC at full hydration without ions.

### How to run (Gromacs 4.5.X)

```
grompp -f md.mdp -c final.gro -p topol.top  -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.12743](http://dx.doi.org/10.5281/zenodo.12743)
