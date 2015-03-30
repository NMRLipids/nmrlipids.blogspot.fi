## Fig folder

This folder aims to manage all plots/graphics/figures used in the project and in the different manuscripts.
All data come from the folder `DATAreportediINblog` and the generated output files are created through a `Makefile`.
This ensure reproducibility.

### Organization

All plots/graphics/figures files are save here. The scripts to create them are under the folder `scripts`.
A `Makefile` is present to quickely and easily re-produced the files.

### Data

All necessary data files are located in `DATAreportediINblog`.

### Makefile

Here the basic structure:
* Each plot/graphic/figure is produced through a rule.
* The dependencies (script and data files) are provided as variables above the rule and have to be set accordingly.
* The name of output files can be changed at the beginning of the `Makefile`

### Howto

If you want to add a figures, here a quick guidelines:
* Add the script in the `scripts` folder
* Create a new rule in the `Makefile` with proper variables (see `Makefile` comments)
* Run `make`

