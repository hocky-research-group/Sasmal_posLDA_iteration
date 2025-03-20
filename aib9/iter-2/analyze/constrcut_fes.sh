#!/bin/bash
source ./plumed_source_script.sh

# print the value of temp in energy units/ kt
plumed kt --temp 400.0 --units kcal/mol

# actual one
plumed sum_hills --hills HILLS --kt 0.794882 --min -45.0 --max 65.0 --bin 110 --outfile fe_vs_ld1.txt --mintozero

# using the 1.5us data
plumed sum_hills --hills HILLS_1.5us --kt 0.794882 --min -45.0 --max 65.0 --bin 110 --outfile fe_vs_ld1_1.5us.txt --mintozero

