#!/bin/bash
cmsrel CMSSW_6_2_0_SLHC15
cd CMSSW_6_2_0_SLHC15/src
cmsenv
git cms-init
git remote add geonmo-cmssw git@github.com:geonmo/cmssw.git
git pull geonmo-cmssw gem-sim-validation
git remote add bsunanda-cmssw git@github.com:bsunanda/cmssw.git
git pull bsunanda-cmssw Phase1-Gem02
git cms-addpkg Validation/MuonGEMHits
git cms-addpkg Validation/MuonGEMDigis
git cms-addpkg Validation/MuonGEMRecHits
git cms-addpkg Geometry/GEMGeometry
scram b -j 9
