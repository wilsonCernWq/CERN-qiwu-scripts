#!/bin/bash
# Batch job for run allpix simulation generated by /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps.sh at Tue Aug 18 19:41:31 CEST 2015
# ---> run simulatio save files locally
echo "*(1.1)*************************************************************************"
echo "*******************************************************************************"
echo "** A L L P I X    C O M P R E S S    D A T A **********************************"
echo "*******************************************************************************"
echo "*******************************************************************************"
# compress data
cd ./EUTelescopeFiles/run-bd-sps-30  # MOVE DIR
find . -name '*.txt' -print | tar -cvzf run-bd-sps-30.tar.gz --files-from - 
cd -       # MOVE BACK

# copy data
mv ./EUTelescopeFiles/run-bd-sps-30/run-bd-sps-30.tar.gz /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-30.tar.gz

# cleaning up
source /afs/cern.ch/work/q/qiwu/Allpix/allpix/setup_allpix_qiwu_geant4.9.10.sh
allpix_clean
rm -r ./EUTelescopeFiles/run-bd-sps-30
cd /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS

# do data analysis
ssh lxplus 'hostname; cd /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS; /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-30.2.sh &> /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-30-remote.out'

# Message
echo "!!!!!!!!!!!!!!!!!!!!! JOB-run-bd-sps-30-DONE !!!!!!!!!!!!!!!!!!"
