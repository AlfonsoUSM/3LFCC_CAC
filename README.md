# 3LFCC

[![https://github.com/AlfonsoUSM/3LFCC_CAC/blob/dev/Notebooks/3LFCC_v2p0.ipynb](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/AlfonsoUSM/3LFCC_CAC/blob/dev/Notebooks/3LFCC_v2p0.ipynb)

Automated generation of 3 Level Flying Capacitor Converter in the SKY130 technology.

## Usage
This tool is executed inside a jupyter notebook that can be runned inside a local instance or in the cloud via [Google Colab](https://colab.research.google.com/github/AlfonsoUSM/3LFCC_CAC/blob/dev/Notebooks/3LFCC_v2p0.ipynb).

A local jupyter notebook can be created using docker:
```
docker run -it --name jupyter-notebook -p 8888:8888 --user root -e GRANT_SUDO=yes jupyter/minimal-notebook
```
Then the notebook can be accessed at `http://localhost:8888/?token=<token>`.

For getting the notebook you can clone the repository and then run all cells sequentially.
