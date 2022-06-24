## Dockerfile
FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

# locale
RUN apt-get update -q && apt-get upgrade -y -q && apt-get install -y --no-install-recommends locales --allow-unauthenticated  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen 

ENV LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm \
    DEBIAN_FRONTEND=noninteractive


## R installation
RUN sh -c 'echo "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" >> /etc/apt/sources.list' && \
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | apt-key add - && \
apt-get update &&  apt-get install -y --no-install-recommends --allow-unauthenticated r-base r-base-dev libxml2-dev libxt-dev libssl-dev libcurl4-openssl-dev imagemagick  gdebi-core git wget && apt-get clean
