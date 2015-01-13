#!/usr/bin/env python
# -*- coding: utf-8 -*-

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    A copy of the GNU General Public License is available at
#    http://www.gnu.org/licenses/gpl-3.0.html

"""
plot_dihedrals.py

Take a series of paths and files and plot them.
This script need matplotlib and numpy lib.
The files have to be in xvg format and contains dihedral distribution of angles.


The -p option defines the paths where the xvg files are stored. Multiple paths
can be supplied, corresponding to different MDs. Examples:
/foo/bar/MD1
/foo/bar/MD2

The -f option defines the name (without the path) of the xvg files stored in each
paths supplied by the -p option. Multiple filenames can be supplied.


Thus, with 2 names (data1.xvg, data2.xvg) and 2 paths (/foo/bar/MD1, /foo/bar/MD2),
the script will load all these files:
/foo/bar/MD1/data1.xvg
/foo/bar/MD1/data2.xvg
/foo/bar/MD2/data1.xvg
/foo/bar/MD2/data2.xvg

For the plot, each filename will generate a subplot containing the data of the all paths.
Matplotlib variables (titles, legends, colors) can be changed at the begining of the script
to reflect your data.
The plot can be save in any format supported by matplotlib by supplying the -o option.
Otherwise, the plot will be displayed.


Example:
python plot_dihedrals.py -f angdist_choline.xvg angdist_gly.xvg angdist_oglyo.xvg angdist_ogly.xvg \
-p charmm36/POPC_0CHL/ charmm36/POPC_20CHL/ charmm36/POPC_50CHL/ -o out.pdf

This will generate a 2x2 (number of filenames) plots where in each plot,
3 (number of paths) data will be plot and saved in the file out.pdf

"""


from __future__ import division
from __future__ import print_function

__author__ = "Hubert Santuz"
__version__ = "1.0"


import sys
import os
import collections
import argparse
import matplotlib.pyplot as plt
import numpy as np

#############################
# Matplotlib user variables #
#############################
# Change it to reflect your data
TITLES = [r"N-$\beta$-$\alpha$-O", "g3-g2-g1-O(sn-1)", "O(P)-g3-g2-g1", "O(P)-g3-g2-O(sn-2)"]
LEGENDS = ["POPC_0CHL", "POPC_20CHL", "POPC_50CHL"]
COLORS = ["#CC333F", "#88C425", "#69D2E7"]


def define_options(argv):
    """Define the script options."""
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("-f", action="store", dest="filenames",
                        required=True, nargs="+",
                        help=("The file names containing the data"
                              " REQUIRED"))
    parser.add_argument("-p", action="store", dest="paths",
                        required=True, nargs="+",
                        help=("The path of MD where the filenames are stored"
                              " REQUIRED"))
    parser.add_argument("-o", action="store", type=str, dest="filout",
                        help="The Output file of the plot")
    args = parser.parse_args(argv)
    return args


def import_data(paths, filenames):
    """
        Create a dictionary of dictionaries with the data of the files.

        It will create numpy arrays for each filename in  ``filenames`` and
        for each path in ``paths``.

        :Example:
        dict = import_data(["/foo/bar/MD1", "/foo/bar/MD2"],["data1.xvg", "data2.xvg"]) will create:
        dict["/foo/bar/MD1"]["data1.xvg"]
        dict["/foo/bar/MD1"]["data2.xvg"]
        dict["/foo/bar/MD2"]["data1.xvg"]
        dict["/foo/bar/MD2"]["data2.xvg"]
        to access the numpy array

        :param paths: list of paths
        :param filenames: list of files
    """

    data = collections.OrderedDict()
    for path in paths:
        tmp = {}
        for filename in filenames:
            full_path = "{0}/{1}".format(path, filename)
            try:
                tmp[filename] = np.array([line.split() for line in open(full_path) if not line[0] in '#@'],
                                         dtype=float)
            except (OSError, IOError) as e:
                print("Cannot open file {0}".format(full_path))
                sys.exit()
        data[path] = tmp

    return data


def plot_dihedral_data(data, paths, filenames, titles, legends, colors, save, output_file=""):

    """
        Plot the  data contained in ``data`` into graphes using matplotlib.

        The plot can be save in any format supported by matplotlib by defining
        ``save`` to ``True`` and fill the ``output_file``.

        :param data: dictionnary of data. Return of the function ``import_data``
        :param paths: list of paths
        :param filenames: list of files without the extension
        :param titles: list of the titles for each graph. Length have to be equal to
        the length of ``filenames``
        :param legends: list of the name of the MD. Length have to be equal to
        the length of ``paths``
        :param colors: list of colors for each MD. Length have to be equal to
        the length of ``paths``
        :param save: Boolean to save the plot into a file
        :param output_file: Filename of the plot to save
    """

    nb_plots = int(np.ceil(len(filenames)/2.0))
    fig, axes_list = plt.subplots(nb_plots, 2,  figsize=(17, 7*nb_plots))

    axes = axes_list
    if nb_plots > 1:
        axes = [axe for sublist in axes_list for axe in sublist]  # make the nested list flat

    for i, filename in enumerate(filenames):
        for j, path in enumerate(paths):

            x = all_data[path][filename][:, 0]
            y = all_data[path][filename][:, 1]

            axes[i].plot(x, y, label=legends[j], color=colors[j],  linewidth=2)

            axes[i].set_title(titles[i])
            axes[i].set_xlabel("Degrees")
            axes[i].set_xlim(-180, 180)
            axes[i].xaxis.set_ticks(np.arange(-180, 181, 60))
            axes[i].set_ylim(0, 0.035)
            # Legends
            lines, labels = axes[i].get_legend_handles_labels()
            axes[i].legend(lines, labels, loc="upper center", frameon=False, labelspacing=0)

    if save:
        plt.savefig(output_file)
    else:
        plt.show()

if __name__ == '__main__':

    # Command line parsing
    args = define_options(sys.argv[1:])

    # Remove trailing '/'
    paths = [path.rstrip("/") for path in args.paths]

    # Load the data
    all_data = import_data(paths, args.filenames)

    if args.filout:
        plot_dihedral_data(all_data, paths, args.filenames, TITLES, LEGENDS, COLORS, True, args.filout)
    else:
        plot_dihedral_data(all_data, paths, args.filenames, TITLES, LEGENDS, COLORS, False)
