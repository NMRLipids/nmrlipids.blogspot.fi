### System

128 molecules of DPPC at full hydration without ions.

### How to run (Gromacs 4.0.7)

```
grompp -f mdin.mdp -c em.gro -p example_lipids.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

Zenodo DOI: [http://dx.doi.org/10.5281/zenodo.14594](http://dx.doi.org/10.5281/zenodo.14594)
