import numpy as np
import MDAnalysis as md
from MDAnalysis.analysis.rms import rmsd
import matplotlib.pyplot as plt

# 1.5 us traj 
#coord = md.Universe('npt_prot_only.gro', 'all_traj_comb_wrapped.xtc')

# 2.5 us traj 
coord = md.Universe('npt_prot_only.gro', 'all_traj_comb_2500ns_wrapped.xtc')


# store rmsd 
rmsd_h1 = np.empty(coord.trajectory.n_frames-1, dtype=float)
rmsd_h2 = np.empty(coord.trajectory.n_frames-1, dtype=float)
rmsd_h3 = np.empty(coord.trajectory.n_frames-1, dtype=float)

# atom selections
h1 = coord.select_atoms("name C CA N and resid 4:11")
h2 = coord.select_atoms("name C CA N and resid 15:20")
h3 = coord.select_atoms("name C CA N and resid 23:32")

# make first frame the reference (arbitrary but there you have it)
h1_ref = np.copy(h1.positions)
h2_ref = np.copy(h2.positions)
h3_ref = np.copy(h3.positions)

# calculate rmsds
for ts in coord.trajectory[1::]:
    rmsd_h1[ts.frame-1] = rmsd(h1.positions, h1_ref, superposition=True)
    rmsd_h2[ts.frame-1] = rmsd(h2.positions, h2_ref, superposition=True)
    rmsd_h3[ts.frame-1] = rmsd(h3.positions, h3_ref, superposition=True)

# save 
rmsd_all = np.array([rmsd_h1, rmsd_h2, rmsd_h3]).T

#np.save("rmsd_data_iter-3_mda.npy", rmsd_all)
np.save("extend_rmsd_data_iter-3_mda.npy", rmsd_all)
