## Dockerfile
FROM harpomaxx/nvidia-base-r

# locale
RUN apt-get update -q && apt-get upgrade -y -q && apt-get install -y --no-install-recommends locales --allow-unauthenticated  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen 

## Python dependencies
RUN apt-get update && apt-get -y upgrade && apt-get install python3-pip python3-virtualenv -y


ENV LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm \
    DEBIAN_FRONTEND=noninteractive \
    R_LIBS_SITE=" "

## Keras deps
RUN pip3 install pip --upgrade
RUN pip install tensorflow-gpu==2.9.0
RUN pip install keras==2.7


## R packages
RUN Rscript -e "install.packages('keras', repos = 'https://cloud.r-project.org')"
