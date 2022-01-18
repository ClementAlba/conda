conda create -y --name pdal_env
conda activate pdal_env
conda install -y -c conda-forge pdal python-pdal entwine nodejs
conda install -y -c msys m2-base
npm install ept-tools
