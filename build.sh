#!/bin/bash
set -ex -o pipefail
conda install -y conda-build conda-verify
export CONDA_ZLIB="1.2.11"
#export CONDA_PY="36"
export CONDA_NPY="115"
NGS_MSTB_CONDA_CHANNELS="-c local -c bioconda -c defaults -c conda-forge -c conda-cluster"
for pkg in pyfastaq ariba petlx micgent pilon; do
    conda build $NGS_MSTB_CONDA_CHANNELS --python 3.6 conda-recipes/$pkg
done
conda build $NGS_MSTB_CONDA_CHANNELS --python 2.7 conda-recipes/toil
conda build $NGS_MSTB_CONDA_CHANNELS conda-recipes/ngs-mstb

conda build purge

