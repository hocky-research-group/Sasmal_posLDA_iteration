import numpy as np
import mdtraj as md 

top = md.load("npt_prot_only.gro").topology
print(top)

# helix-1
h1 = top.select("name C CA N and resid 3 to 10")+1
print("helix-1: ", ",".join(np.array(h1, dtype=str)), "[%d]"%len(h1))

# helix-2
h2 = top.select("name C CA N and resid 14 to 19")+1
print("helix-2: ", ",".join(np.array(h2, dtype=str)), "[%d]"%len(h2))

# helix-3
h3 = top.select("name C CA N and resid 22 to 31")+1
print("helix-3: ", ",".join(np.array(h3, dtype=str)), "[%d]"%len(h3))

