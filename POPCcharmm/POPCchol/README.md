## MD simulations with Cholesterol

### Forcefield

These simulations use the gromacs version of charmm36 lipid forcefield from Piggot *et al.* [1].
The downloaded forcefield is under the name `charmm36.ff_lipids_Piggot` and can be download [here](http://www.gromacs.org/@api/deki/files/184/=charmm36.ff_4.5.4_ref.tgz).

Cholesterol parameters came from Lim *et al.* [2] and converted into Gromacs files (`cholesterol.itp`and `params_chol.itp`).

SPE calculation was done to assess the conversion.


### References

[1] **Molecular Dynamics Simulations of Phosphatidylcholine Membranes: A Comparative Force Field Study**, Piggot *et al.*, JCTC, 2012 8 (11), 4593-4609

[2] **Update of the Cholesterol Force Field Parameters in CHARMM**, Lim *et al.*, J. Phys. Chem. B, 2012 116 (1), 203-210
