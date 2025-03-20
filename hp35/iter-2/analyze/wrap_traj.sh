#!/bin/bash 

# loading all the required modules and stuff
source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# centering the protein in trajectory using PBC condition
#$gmxexe trjconv -f ../opes_ld1_hp35_360K_bf_8_barrier_10.xtc -s ../hp35_md_save_prot_only_every_5ps.tpr -pbc mol -center -n /scratch/projects/hockygroup/ss12902/recent_hp35_iter_work/make_new_tpr/index.ndx -o centered_traj.xtc 

# eliminate the translational and rotational motion of protein molecule from the centered trajectory
#$gmxexe trjconv -f centered_traj.xtc -s ../hp35_md_save_prot_only_every_5ps.tpr -n /scratch/projects/hockygroup/ss12902/recent_hp35_iter_work/make_new_tpr/index.ndx -fit rot+trans -o opes_ld1_hp35_360K_bf_8_barrier_10_wrapped.xtc



# centering the protein in trajectory using PBC condition
$gmxexe trjconv -f ../opes_ld1_hp35_360K_bf_8_barrier_10.xtc -s ../hp35_md_save_prot_only_every_5ps.tpr -pbc mol -center -n /scratch/projects/hockygroup/ss12902/recent_hp35_iter_work/make_new_tpr/index.ndx -o centered_traj.xtc 

# eliminate the translational and rotational motion of protein molecule from the centered trajectory
$gmxexe trjconv -f centered_traj.xtc -s ../hp35_md_save_prot_only_every_5ps.tpr -n /scratch/projects/hockygroup/ss12902/recent_hp35_iter_work/make_new_tpr/index.ndx -fit rot+trans -o opes_ld1_hp35_360K_bf_8_barrier_10_extended_wrapped.xtc

