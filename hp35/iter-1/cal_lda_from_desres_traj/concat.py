import numpy as np

path  = "/scratch/work/hockygroup/gmh4/projects/gmm_clustering/data/DESRES-Trajectory_pnas2012-2f4k-360K-protein/pnas2012-2f4k-360K-protein/"
n_dcd_files = 153

f_o = open("concat_trajs_dcd.sh", "w")
f_o.write("#!/bin/bash\n")
f_o.write("#exec=/scratch/work/hockygroup/software/LINUX/bin/catdcd4.0/catdcd\n")
command_line = "catdcd -o pnas2012-2f4k-360K-protein-full-traj-DESRES.dcd "
c=0
for i in range(n_dcd_files):
    if c < 10:
        val = "00"+str(i)
    elif c < 100:
        val = "0"+str(i)
    else:
        val = str(i)
    print("pnas2012-2f4k-360K-protein-%s.dcd "%val)
    command_line += path+"pnas2012-2f4k-360K-protein-%s.dcd "%val
    c += 1
f_o.write(command_line[:-1]+"\n")
f_o.close()




