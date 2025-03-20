import numpy as np
import matplotlib.pyplot as plt

kt = 0.715393

#2.5us
rmsd_data = np.load('extend_rmsd_data_iter-3_mda.npy', allow_pickle=True)
bias = np.loadtxt('../COLVAR', usecols=2)[1::5]


# 1.5us
#rmsd_data = np.load('rmsd_data_iter-3_mda.npy', allow_pickle=True)
#bias = np.loadtxt('COLVAR_1.5us', usecols=2)[1::5]

x = rmsd_data[:,0]  # helix-1
y = rmsd_data[:,2]  # helix-3

# histogram
H, xedges, yedges = np.histogram2d(x,y,bins=40,density=True, weights=np.exp(bias/kt))
xcenters = (xedges[:-1] + xedges[1:]) / 2
ycenters = (yedges[:-1] + yedges[1:]) / 2
H = -kt*np.log(H.T)
H -= H.min()
xx, yy = np.meshgrid(xcenters, ycenters)

fig, ax = plt.subplots(1,1, figsize=(3.5,3.5), dpi=150)

# plot
ax.set_ylim(0,5)
ax.set_xlim(0,5)
ax.set_yticks(np.arange(1,5))
ax.set_xticks(np.arange(1,5))
ax.set_box_aspect(1.0)
ax.set_title("iter-3")
im = ax.contourf(xx, yy, H, cmap='jet', levels=np.arange(0,10.1,0.1))
ax.contour(xx, yy, H, levels=15, vmax=10, linestyles="--", cmap='binary')
ax.tick_params(axis='both')

# Create a common colorbar
#cbar_ax = fig.add_axes([0.87, 0.22, 0.02, 0.55])  # [x, y, width, height]
cbar = fig.colorbar(im, ticks=[0,2,4,6,8,10])

# Optionally, add a label to the colorbar
cbar.set_label('FE (Kcal/mol)')

ax.set_xlabel('RMSD wrt Helix-1 ($\AA$)')
ax.set_ylabel('RMSD wrt Helix-3 ($\AA$)')
fig.tight_layout()

# save
plt.savefig('extend_2d_fes_rmsd.png')
#plt.savefig('2d_fes_rmsd.png')
