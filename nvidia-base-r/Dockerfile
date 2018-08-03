## Dockerfile
FROM nvidia/cuda:9.0-cudnn7-runtime

# locale
RUN apt-get update -q && apt-get upgrade -y -q && apt-get install -y --no-install-recommends locales && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen 

ENV LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm


## R installation
RUN sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list' && \
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 && \
gpg -a --export E084DAB9 | apt-key add - && \
apt-get update &&  apt-get install -y --no-install-recommends r-base r-base-dev libxml2-dev libxt-dev libssl-dev libcurl4-openssl-dev imagemagick  gdebi-core git wget && apt-get clean
