# Master build recipes for NGS-MSTB installation

## To build recipes that use Bioconda environment variables

- [Automation](https://github.com/bioconda/bioconda-recipes/issues/7233#issuecomment-356311668)
- [Manual](https://bioconda.github.io/contribute-a-recipe.html)
  - [Variable values](https://github.com/bioconda/bioconda-recipes/blob/master/scripts/env_matrix.yml)
    
    For example: `CONDA_ZLIB="1.2.11" conda build .`
