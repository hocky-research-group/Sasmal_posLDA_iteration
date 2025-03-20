#!/bin/bash
#SBATCH --job-name=l0.005+2
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH --mem=16GB

# load all the modules needed
source /scratch/work/hockygroup/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules.subarna
gmxexe=/scratch/work/hockygroup/software/gromacs-2019.6-plumedSept2020/bin/gmx_mpi

# command line
#srun $gmxexe mdrun -s left.tpr -deffnm wt_metad_ld1_aib9_400K_height_0.005_bf_2.0 -plumed plumed.dat -nsteps 250000000 -ntomp 1 
#srun $gmxexe mdrun -s left.tpr -deffnm wt_metad_ld1_aib9_400K_height_0.005_bf_2.0 -plumed plumed.dat -nsteps 25000 -ntomp 1 

# restart
srun $gmxexe mdrun -s left.tpr -deffnm wt_metad_ld1_aib9_400K_height_0.005_bf_2.0 -plumed plumed.dat -cpi wt_metad_ld1_aib9_400K_height_0.005_bf_2.0.cpt -append -nsteps 250000000 -ntomp 1 

