import numpy as np
import matplotlib.pyplot as plt
import mdtraj as md 


# topology
topol = md.load("left_protein_only.gro").topology

# load traj
#traj = md.load("wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped_500ns.xtc", top=topol, atom_indices=topol.select("protein"))
#traj = md.load("wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped_1000ns.xtc", top=topol, atom_indices=topol.select("protein"))
traj = md.load("wt_metad_ld1_aib9_400K_height_0.005_bf_2.0_wrapped.xtc", top=topol, atom_indices=topol.select("protein"))


phi_indices, phi_vals = md.compute_phi(traj)   # it gives only last 8 dihedrals, instead of 9
#print(phi_indices)
#print(phi_vals.shape)

#print(phi_vals[:, 1:6:].shape)
zeta = np.sum(phi_vals[:, 1:6:], axis=1)

#np.savetxt("zeta.txt", zeta)
#np.savetxt("zeta_1000ns.txt", zeta)
np.savetxt("concat_zeta.txt", zeta)
