#!/bin/bash
set -ex -o pipefail
NGS_MSTB_CONDA_CHANNELS="-c local -c bioconda -c defaults -c conda-forge -c conda-cluster"
conda create $NGS_MSTB_CONDA_CHANNELS -n ngs-mstb ngs-mstb
conda create $NGS_MSTB_CONDA_CHANNELS -n toil toil

