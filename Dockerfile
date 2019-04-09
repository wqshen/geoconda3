#docker build -t wqshen/geoconda3 .

FROM continuumio/miniconda3
MAINTAINER Wenqiang Shen <wqshen91@gmail.com>

# uncomment the following lines to speep up apt-get in China
#RUN sed -i "s@http://deb.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
#    sed -i "s@http://security.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
#    apt-get update

# install build tools, like gcc, g++
RUN apt-get install -y build-essential

# comment the following lines if in China
RUN conda install -y -c conda-forge geotiff netCDF4 cfgrib cartopy \
    && pip install --no-cache-dir --upgrade pip \
    && pip install conda-pack \
    && pip install logzero \
    && pip install metpy \
    && pip install git+https://github.com/hhuangwx/cmaps.git@master
#    && conda clean --all  # maybe you want delete cached packages

# uncomment the following lines to speep up apt-get in China
#RUN conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ \
#    && conda install -y -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/  geotiff netCDF4 cfgrib cartopy \
#    && pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip \
#    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple conda-pack \
#    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple logzero \
#    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple metpy \
#    && pip install git+https://github.com/hhuangwx/cmaps.git@master
##    && conda clean --all  # maybe you want delete cached packages
