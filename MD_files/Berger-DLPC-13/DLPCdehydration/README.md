### Systems

72 molecules of DLPC at different hydration:
- 4w_l : 4 water molecules per lipid
- 8w_l : 8 water molecules per lipid
- 12w_l: 12 water molecules per lipid
- 16w_l: 16 water molecules per lipid
- 20w_l: 20 water molecules per lipid
- 24w_l: 24 water molecules per lipid
- 28w_l: 28 water molecules per lipid

### How to run (Gromacs 4.5.4)

```
grompp -c init2_TI5.gro -f TI.mdp -p system.top >& grompp.log
mdrun -deffnm md &> mdrun.log
```

### Retrieve data

- 4w_l : [https://zenodo.org/record/16295](https://zenodo.org/record/16295)
- 8w_l : [https://zenodo.org/record/16294](https://zenodo.org/record/16294)
- 12w_l: [https://zenodo.org/record/16293](https://zenodo.org/record/16293)
- 16w_l: [https://zenodo.org/record/16292](https://zenodo.org/record/16292)
- 20w_l: [https://zenodo.org/record/16291](https://zenodo.org/record/16291)
- 24w_l: [https://zenodo.org/record/16289](https://zenodo.org/record/16289)
- 28w_l: [https://zenodo.org/record/16287](https://zenodo.org/record/16287)
