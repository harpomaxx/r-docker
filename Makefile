nvidia-base-r-latest:
		nvidia-docker build --rm -t harpomaxx/nvidia-base-r nvidia-base-r/

nvidia-base-r-keras-latest:
		nvidia-docker build --rm -t harpomaxx/nvidia-base-r-keras nvidia-base-r-keras/

nvidia-rstudio-latest:nvidia-base-r-latest
		nvidia-docker build --rm -t harpomaxx/nvidia-rstudio nvidia-rstudio/

nvidia-rstudio-keras-latest:nvidia-rstudio-latest
		nvidia-docker build --rm -t harpomaxx/nvidia-rstudio-keras nvidia-rstudio-keras/

all: nvidia-base-r-latest nvidia-rstudio nvidia-rstudio-keras-latest
