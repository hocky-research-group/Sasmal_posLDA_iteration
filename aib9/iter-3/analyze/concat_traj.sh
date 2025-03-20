#!/bin/bash 

source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# centering the protein in trajectory using PBC condition
$gmxexe trjcat -f ../wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55.xtc ../wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55.part0002.xtc ../wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55.part0003.xtc -o concat_traj.xtc -settime

