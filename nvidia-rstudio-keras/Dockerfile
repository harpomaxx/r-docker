## Dockerfile
FROM nvidia-rstudio:latest

## Python dependencies
RUN apt-get update && apt-get -y upgrade && apt-get install python-pip python-virtualenv -y
#RUN pip install virtualenv

# Downgrade libcunn to libcunn7.0
# Fix keras binary deps to libcunn7.0
RUN apt-get install -y --allow-downgrades --no-install-recommends  libcudnn7=7.0.5.15-1+cuda9.0 libcudnn7-dev=7.0.5.15-1+cuda9.0 && rm -rf /var/lib/apt/lists/* && apt-get clean

## Keras deps
RUN pip install tensorflow-gpu
RUN pip install keras


## R packages
RUN Rscript -e "install.packages('keras', repos = 'https://cloud.r-project.org')"

#RUN Rscript -e "keras::install_keras(tensorflow = 'gpu')"
#RUN Rscript -e "install.packages('tidyverse', repos = 'https://cloud.r-project.org')"

COPY  keras-mist-example.rmd /home/rstudio/
CMD ["/init"]
