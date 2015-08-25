#!/bin/bash
# Batch job for run allpix simulation generated by /afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps.sh at Tue Aug 18 19:41:32 CEST 2015
# ---> run the full chain
# (1)---> run simulation locally
cd /home/qiwu
/afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-36.0.sh
# (2)---> copy data back to top and run ssh script
/afs/cern.ch/work/q/qiwu/Allpix/rundata.r-50/RUN-BD-SPS/run-bd-sps-36.1.sh &
