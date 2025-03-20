#!/bin/bash 

source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# centering the protein in trajectory using PBC condition
#$gmxexe trjconv -f ../wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55.xtc -s ../left.tpr -pbc mol -center -o centered_traj.xtc

# eliminating the translational and rotational motion of protein molecule from the centered trajectory
#$gmxexe trjconv -f centered_traj.xtc -s ../left.tpr -fit rot+trans -o wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55_wrapped.xtc

#rm centered_traj.xtc 
 

# centering the concatenated trajectory
$gmxexe trjconv -f concat_traj.xtc -s ../left.tpr -pbc mol -center -o concat_centered.xtc
$gmxexe trjconv -f concat_centered.xtc -s ../left.tpr -fit rot+trans -o concat_wrapped.xtc
