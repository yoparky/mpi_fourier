#!/bin/bash
for p in 1 2 4 8
    do
        echo "Running program for $p processors"
        # Compile the program
        mpic++ fourier.cpp -o fourier -lm
        mpirun -np $p fourier
        echo "Program completed for $p processors"
        echo
    done