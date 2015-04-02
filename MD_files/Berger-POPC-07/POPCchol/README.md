### Systems

POPC bilayer with various concentration of Cholesterol (6, 14, 34, 50, 61)

### How to run (Gromacs 4.5)

```
grompp -c endCONF.gro -p CHOLpopc.top -f CHOLpopc.mdp >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 06%: http://dx.doi.org/10.5281/zenodo.13282
- 14%: http://dx.doi.org/10.5281/zenodo.13281
- 34%: http://dx.doi.org/10.5281/zenodo.13283
- 50%: http://dx.doi.org/10.5281/zenodo.13285
- 61%: http://dx.doi.org/10.5281/zenodo.13286

