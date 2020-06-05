## Dockerfile
FROM nvidia/opencl:runtime-ubuntu16.04

RUN apt-get update -q && apt-get upgrade -y -q

# locale
RUN apt-get install locales && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

ENV LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm

# gnupg
RUN apt-get install gnupg -y

## R installation
RUN sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial-cran35/" >> /etc/apt/sources.list'
RUN gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
RUN gpg -a --export E084DAB9 | apt-key add -
RUN apt-get update
RUN apt-get install -y r-base r-base-dev libxml2-dev libxt-dev libssl-dev libcurl4-openssl-dev imagemagick  gdebi-core git wget
RUN apt-get clean
