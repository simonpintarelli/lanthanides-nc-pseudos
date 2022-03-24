#!/usr/bin/bash


CP2K_BIN=/path/to/cp2k.psmp

atoms=(Ce Dy Er Eu Gd Ho La Lu Nd Pm Pr Sm Tb Tm Yb)

for atom in ${atoms[@]};
do
    (
        cd $atom
        ${CP2K_BIN} ${atom}.inp | tee log
    )
done
