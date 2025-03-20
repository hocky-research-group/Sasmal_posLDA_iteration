#!/bin/bash
source ./plumed_source_script.sh

# print the value of temp in energy units/ kt
plumed kt --temp 400.0 --units kcal/mol

# actual one
#plumed sum_hills --hills HILLS --kt 0.794882 --min -50.0 --max 30.0 --bin 80 --outfile fe_vs_ld1.txt --mintozero

# usign 1.5us trajectory
plumed sum_hills --hills HILLS_1.5us --kt 0.794882 --min -50.0 --max 30.0 --bin 80 --outfile fe_vs_ld1_1.5us.txt --mintozero

