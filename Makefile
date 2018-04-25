nvidia-base-r-latest:
		nvidia-docker build -t nvidia-base-r nvidia-base-r/

nvidia-rstudio-latest:nvidia-base-r-latest
		nvidia-docker build -t nvidia-rstudio nvidia-rstudio/

nvidia-rstudio-keras-latest:nvidia-rstudio-latest
		nvidia-docker build -t nvidia-rstudio-keras nvidia-rstudio-keras/

all: nvidia-base-r-latest nvidia-rstudio nvidia-rstudio-keras-latest
