FROM daskdev/dask

ENV CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

RUN conda install --yes --freeze-installed \
       -c conda-forge \
       nomkl \
       zarr xarray pyproj shapely s3fs pyarrow && \
       conda clean -afy && \
       pip install rasterio
