FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 
RUN eval "$(/opt/conda/bin/conda shell.bash hook)" && \
	conda create --name n2v python==3.9 && \
	conda activate n2v         && \
	conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1 \
		ipykernel jupyterlab && \
	python3 -m pip install --upgrade pip && \
	python3 -m pip install tensorflow==2.8 protobuf==3.20.1 && \
	python3 -m pip install n2v

	
ENV	LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/conda/envs/n2v/lib/:/opt/conda/lib





