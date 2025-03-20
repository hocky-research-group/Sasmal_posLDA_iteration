#!/bin/bash 
f_name=../FES_from_State.py

# command line
#python $f_name --temp 360.0 --state state_500ns --min -5.0 --max 35.0 --bin 120 --outfile fes_ld1_state_500ns.dat --der 
#python $f_name --temp 360.0 --state state_1000ns --min -5.0 --max 35.0 --bin 120 --outfile fes_ld1_state_1000ns.dat --der 
#python $f_name --temp 360.0 --state state_1500ns --min -5.0 --max 35.0 --bin 120 --outfile fes_ld1_state_1500ns.dat --der 
python $f_name --temp 360.0 --state state_3510ns --min -5.0 --max 35.0 --bin 120 --outfile fes_ld1_state_final.dat --der 


