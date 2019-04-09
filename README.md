[![Docker Stars](https://img.shields.io/docker/stars/wqshen/geoconda3.svg?style=flat-square)](https://hub.docker.com/r/wqshen/geoconda3/)
[![Docker Pulls](https://img.shields.io/docker/pulls/wqshen/geoconda3.svg?style=flat-square)](https://hub.docker.com/r/wqshen/geoconda3/)

# geoconda3 python 3.7 Docker image 

This image is based on continuumio/miniconda3, and installed build tools (like gcc, g++) and many python packages for geodata processing and visualization.

Note: The size of this image is a little bigger.

[![](https://images.microbadger.com/badges/image/wqshen/geoconda3.svg)](http://microbadger.com/images/wqshen/geoconda3 "Get your own image badge on microbadger.com")

## Usage Example

```shell
docker run -it --rm wqshen/geoconda3 /bin/bash
```

You can also use data volume to share directory with your machine and docker container.

```shell
docker run -it --rm -v D:/env_pack:/tmp wqshen/geoconda3 /bin/bash
```

You can do many things while get into the bash in the container.

## 1 tool for grib file 

with eccodes, you can use `grib_ls`, `grib_dump` and et al.

```shell
grib_ls your_grib_file.grib
```


## 2 tool for netcdf file

with netCDF library, you can use `ncdump` and et al.

```shell
ncdump your_netcdf_file.grib
```

## 3 pack your python environment

with `conda-pack`, you can pack python environment.

```shell
conda pack -o /tmp/geoconda3.environment.tar.gz
```

The output geoconda3.environment.tar.gz will be located in D:/env_pack,
and can be untar to any other linux mechine and use continuee, may be you want more information, look at https://conda.github.io/conda-pack/.

