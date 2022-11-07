BootStrap: docker
From: ghcr.io/truatpasteurdotfr/n2v:main

%post
date +"%Y-%m-%d-%H%M" > /last_update

%runscript
eval "$(conda shell.bash hook)" && \
conda activate n2v && \
"$@"
