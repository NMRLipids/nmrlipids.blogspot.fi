### Systems

72 molecules of POPC at different hydration:
- 15w_l: 15 water molecules per lipid
- 7w_l: 7 water molecules per lipid

### How to run

```
grompp -f mdrun.mdp -c popcRUN4.gro -p popcSH.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 15w_l: [http://dx.doi.org/10.5281/zenodo.13946](http://dx.doi.org/10.5281/zenodo.13946)
- 7w_l:  [http://dx.doi.org/10.5281/zenodo.13945](http://dx.doi.org/10.5281/zenodo.13945)