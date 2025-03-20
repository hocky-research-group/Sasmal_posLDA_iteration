#!/bin/bash
#SBATCH --job-name=hp35_2
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --time=60:00:00
#SBATCH --mem=8GB

# load all the modules needed
source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules.subarna
gmxexe=/scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi

# command line
#srun $gmxexe mdrun -s hp35_md_save_prot_only_every_5ps.tpr -deffnm opes_ld1_hp35_360K_bf_8_barrier_10 -plumed plumed.dat -nsteps 250000000 -ntomp 1 

# restart
srun $gmxexe mdrun -s hp35_md_save_prot_only_every_5ps.tpr -deffnm opes_ld1_hp35_360K_bf_8_barrier_10 -plumed plumed.dat -cpi opes_ld1_hp35_360K_bf_8_barrier_10.cpt -append -nsteps 250000000 -ntomp 1



