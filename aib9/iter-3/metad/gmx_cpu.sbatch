#!/bin/bash
#SBATCH --job-name=i3
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH --mem=8GB

# load all the modules needed
source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules.subarna
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# command line
#srun $gmxexe mdrun -s left.tpr -deffnm wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55 -plumed plumed.dat -nsteps 250000000 -ntomp 1 

# restart
srun $gmxexe mdrun -s left.tpr -deffnm wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55 -plumed plumed.dat -nsteps 250000000 -ntomp 1 -cpi wt_metad_ld1_aib9_400K_height_0.7_bf_8_sigma_0.55.cpt -noappend


