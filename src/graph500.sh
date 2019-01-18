#!/bin/bash
for SCALE in 10 11; do
	for EF in 16 32; do
	        for TEST in 1 2 3 4; do
	            	for NODES in 2 4 8; do

                mpiexec -n $NODES ./graph500_reference_bfs $SCALE $EF >> graph500.$NODES.$SCALE.$EF.log
				
			done			
		done
	done
done
