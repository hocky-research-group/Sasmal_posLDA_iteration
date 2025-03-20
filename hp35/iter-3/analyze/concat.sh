#!/bin/bash 
source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules.subarna
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# concat 
#$gmxexe trjcat -f ../opes_ld1_hp35_360K_bf_8_barrier_10.xtc ../opes_ld1_hp35_360K_bf_8_barrier_10.part0002.xtc -o all_traj_comb.xtc -settime

$gmxexe trjcat -f ../opes_ld1_hp35_360K_bf_8_barrier_10.xtc ../opes_ld1_hp35_360K_bf_8_barrier_10.part0002.xtc ../opes_ld1_hp35_360K_bf_8_barrier_10.part0003.xtc -o all_traj_comb_2500ns.xtc -settime

