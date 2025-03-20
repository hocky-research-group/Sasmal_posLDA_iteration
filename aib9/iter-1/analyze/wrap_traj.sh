#-----------------------------------------------------------------------------#
# This script is used to center the protein molecule after simulations.       #

# Because in gromacs, trajectroy file (.xtc) the protein goes out of the box. #
#-----------------------------------------------------------------------------#


# loading all the required modules and stuff
#source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules

#path=/scratch/projects/hockygroup/ss12902/wt-metad_sims_aib9/height_0.005_bf_2.0

# centering the protein in trajectory using PBC condition
#mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f $path/wt_metad_ld1_aib9_400K_height_0.005_bf_2.0.xtc -s $path/left.tpr -pbc mol -center -o centered_traj.xtc -e 500000

# eliminating the translational and rotational motion of protein molecule from the centered trajectory
#mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f centered_traj.xtc -s $path/left.tpr -fit rot+trans -o wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped_500ns.xtc


 
# loading all the required modules and stuff
#source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules

#path=/scratch/projects/hockygroup-archive/PublishedPapers/2023-Sasmal-posLDA-JCTC/AIB9/wt-metad_sim/maintext_metad_aib9/height_0.005_bf_2.0

# centering the protein in trajectory using PBC condition
#mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f $path/wt_metad_ld1_aib9_400K_height_0.005_bf_2.0.xtc -s $path/left.tpr -pbc mol -center -o centered_traj.xtc -e 1000000

# eliminating the translational and rotational motion of protein molecule from the centered trajectory
#mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f centered_traj.xtc -s $path/left.tpr -fit rot+trans -o wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped_1000ns.xtc


# loading all the required modules and stuff
source /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/GMXRC.bash.modules

path=/scratch/projects/hockygroup-archive/PublishedPapers/2023-Sasmal-posLDA-JCTC/AIB9/wt-metad_sim/maintext_metad_aib9/height_0.005_bf_2.0

# centering the protein in trajectory using PBC condition
mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f $path/wt_metad_ld1_aib9_400K_height_0.005_bf_2.0.xtc -s $path/left.tpr -pbc mol -center -o centered_traj.xtc

# eliminating the translational and rotational motion of protein molecule from the centered trajectory
mpirun -np 1 /scratch/work/hockygroup/software/gromacs-2020.4-plumed2020/bin/gmx_mpi trjconv -f centered_traj.xtc -s $path/left.tpr -fit rot+trans -o wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped.xtc

#rm centered_traj.xtc





