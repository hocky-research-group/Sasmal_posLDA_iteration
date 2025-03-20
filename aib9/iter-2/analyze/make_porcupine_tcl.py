import numpy as np
import MDAnalysis as md
import matplotlib.pyplot as lt

forFile = './ld1_3states_scalings.txt'
vmdFile = "vmd_porcupine.tcl"

univ = md.Universe("./left_protein_only.gro")
bb_sel = "(name C and resid 1) or (name C CA N and not resid 1 9) or (name N and resid 9)"

atoms = univ.select_atoms(bb_sel)
print(atoms.indices.shape)
positions = atoms.positions
print(positions.shape)
forces_data = np.loadtxt(forFile) 

vmdOut = open(vmdFile,"w")
for atom in range(positions.shape[0]):
    forces = forces_data[atom*3:atom*3+3:]
    #mid = positions[atom,:] + 0.5*forces
    mid = positions[atom,:] + 0.8*forces
    end = positions[atom,:] + forces
    vmdOut.write("draw color yellow\n")
    vmdOut.write("draw cylinder {%10.3f %10.3f %10.3f} {%10.3f %10.3f %10.3f} radius 0.15 filled yes\n" % (positions[atom,0],positions[atom,1],positions[atom,2],mid[0],mid[1],mid[2]))
    vmdOut.write("draw color red\n")
    vmdOut.write("draw cone {%10.3f %10.3f %10.3f} {%10.3f %10.3f %10.3f} radius 0.25\n" % (mid[0],mid[1],mid[2],end[0],end[1],end[2]))

vmdOut.close()

