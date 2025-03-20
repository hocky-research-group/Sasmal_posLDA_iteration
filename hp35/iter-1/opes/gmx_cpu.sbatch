#!/bin/bash
#SBATCH --job-name=opes_f_u
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH --mem=16GB

# load all the modules needed
source /scratch/work/hockygroup/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules.subarna
gmxexe=/scratch/work/hockygroup/software/gromacs-2019.6-plumedSept2020/bin/gmx_mpi

# command line
#srun $gmxexe mdrun -s md.tpr -deffnm opes_metad_ld1_hp35_360K_bf_8.0_barrier_10.0 -plumed plumed.dat -nsteps 250000000 -ntomp 1 

# restart
srun $gmxexe mdrun -s md.tpr -deffnm opes_metad_ld1_hp35_360K_bf_8.0_barrier_10.0 -plumed plumed.dat -cpi opes_metad_ld1_hp35_360K_bf_8.0_barrier_10.0.cpt -append -nsteps 250000000 -ntomp 1 

