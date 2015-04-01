### Systems

72 molecules of POPC with various amount of Na/Cl ions (13, 26, 52, 78).

### How to run

```
grompp -f mdrun.mdp -c popcRUN4.gro -p popc.top -o md.tpr  >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 13na: NA
- 26na: NA
- 52na: NA
- 78na: NA