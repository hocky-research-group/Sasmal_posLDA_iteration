#!/bin/bash 
f_name=../FES_from_State.py

# command line
#python $f_name --temp 360.0 --state state_500ns --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_500ns.dat --der 
#python $f_name --temp 360.0 --state state_1000ns --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_1000ns.dat --der 
#python $f_name --temp 360.0 --state state_1500ns --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_1500ns.dat --der 
#python $f_name --temp 360.0 --state state_2000ns --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_2000ns.dat --der 
#python $f_name --temp 360.0 --state state_2500ns --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_2500ns.dat --der 

python $f_name --temp 360.0 --state state_10375ns.dat --min -20.0 --max 8.0 --bin 120 --outfile fes_ld1_state_final.dat --der 


