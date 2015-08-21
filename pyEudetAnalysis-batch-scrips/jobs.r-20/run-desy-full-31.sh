#!/bin/bash
cd /afs/cern.ch/work/q/qiwu/PYEUTANA/mathieu/pyEudetAnalysis
source ./setup_CERN.sh
python ./RunFullChain.py -m all -t reconstruction+analysis -o /afs/cern.ch/work/q/qiwu/Data/Simulation_DESY_r20/histo-clic -d /afs/cern.ch/work/q/qiwu/Data/Simulation_DESY_r20/histo-clic -a /afs/cern.ch/work/q/qiwu/Data/Simulation_DESY_r20/histo-clic -i 31 -f 31
