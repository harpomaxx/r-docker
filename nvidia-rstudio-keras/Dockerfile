## Dockerfile
FROM nvidia-rstudio:latest

## Python dependencies
RUN apt-get update && apt-get -y upgrade
RUN apt-get install python-pip python-virtualenv -y
#RUN pip install virtualenv

## Keras deps
RUN pip install tensorflow-gpu
RUN pip install keras


## R packages
RUN Rscript -e "install.packages('keras', repos = 'https://cloud.r-project.org')"

#RUN Rscript -e "keras::install_keras(tensorflow = 'gpu')"
#RUN Rscript -e "install.packages('tidyverse', repos = 'https://cloud.r-project.org')"

COPY  keras-mist-example.rmd /home/rstudio/
CMD ["/init"]
