import numpy as np
import matplotlib.pyplot as plt


nbins= 120
range_=[-20,8]
kt = 0.715393
time, ld1 = np.loadtxt("ld1_vals.txt", usecols=(0,2), unpack=True)

hist, edges = np.histogram(ld1, bins=nbins, range=range_, density=True)
bins = (edges[1:]+edges[:-1])/2
fe = -kt*np.log(hist)
fe -= fe.min()

plt.figure(1)
plt.xlabel("# Frames")
plt.ylabel("LD1")
plt.plot(time, ld1)

plt.figure(2)
plt.ylabel("FE (kcal/mol)")
plt.xlabel("LD1")
plt.grid(which="major", axis="both", linestyle="--", color="lightgrey")
plt.plot(bins, fe, "k-")

out = np.array([bins, fe]).T
np.savetxt("desres_fes.dat", out)

plt.show()

