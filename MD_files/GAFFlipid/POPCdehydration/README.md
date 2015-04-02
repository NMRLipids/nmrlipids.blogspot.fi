### Systems

126 molecules of POPC at different hydration:
- 7w_l: 7 water molecules per lipid

### How to run (Gromacs 4.5)

```
grompp -c endconf.gro -f mdrun.mdp -p popc3.top >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 7w_l:  [http://dx.doi.org/10.5281/zenodo.13853](http://dx.doi.org/10.5281/zenodo.13853)

