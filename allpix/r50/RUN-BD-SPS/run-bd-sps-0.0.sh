#!/bin/bash
# Batch job for run allpix simulation generated by /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps.sh at Tue Aug 18 19:41:27 CEST 2015
# ---> run simulatio save files locally
echo "*(1.0)*************************************************************************"
echo "*******************************************************************************"
echo "** A L L P I X    S I M U L A T I O N *****************************************"
echo "*******************************************************************************"
echo "*******************************************************************************"
# run simulation
source /afs/cern.ch/work/q/qiwu/Allpix/allpix/setup_allpix_qiwu_geant4.9.10.sh
allpix /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-0.in 0
