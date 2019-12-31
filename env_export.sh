#!/bin/bash
conda env export -n ngs-mstb > env/ngs-mstb.yml
conda env export -n toil > env/toil.yml

