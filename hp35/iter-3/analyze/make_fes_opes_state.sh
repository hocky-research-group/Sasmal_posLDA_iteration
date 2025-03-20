#!/bin/bash 

f_name=./FES_from_State.py


#-----++++few notes++++-------#
# --cv is not available here 
# --sigma not needed

# command line
#python $f_name --temp 360.0 --state ../state_500ns --min -40.0 --max 10.0 --bin 100 --outfile fe_ld1_state_500ns.dat --der 
#python $f_name --temp 360.0 --state ../state_1000ns --min -40.0 --max 10.0 --bin 100 --outfile fe_ld1_state_1000ns.dat --der 
#python $f_name --temp 360.0 --state ../state_1500ns --min -40.0 --max 10.0 --bin 100 --outfile fe_ld1_state_1500ns.dat --der 
python $f_name --temp 360.0 --state ../state_2500ns --min -40.0 --max 10.0 --bin 100 --outfile fe_ld1_state_2500ns.dat --der 


