### Systems

128 molecules of POPC at different hydration:
- 7w_l: 7 water molecules per lipid

### How to run (Gromacs 4.5)

```
grompp -c popc7wPERpc.gro -f popc.mdp -p popc7wPERpc.top >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 7w_l:  [https://zenodo.org/record/13814](https://zenodo.org/record/13814)

