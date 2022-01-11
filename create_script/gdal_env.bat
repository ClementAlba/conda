conda create --name gdal_env
conda activate gdal_env
conda install -y -c conda-forge gdal fiona rasterio
conda install -y -c msys m2-base
