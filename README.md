A set of docker images for R/Rstudio with keras/tensorflow-gpu support.

Heavly based on rocker-org images (https://github.com/rocker-org)


# REQUIREMENTS

## docker-ce (https://www.docker.com/community-edition)

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
sudo apt-get update && apt-get install docker-ce

### nvidia-docker (https://github.com/NVIDIA/nvidia-docker)

### Add the package repositories
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update

### Install nvidia-docker2 and reload the Docker daemon configuration
sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd


sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd

# AVAILABLE IMAGES

nvidia-base-r: 	the last base r distrubion from CRAN
nvidia-rstudio: the last rstudio-server version
nvidia-rstudio-keras: the last keras/tensorflow-gpu

# BUILDING
make 
