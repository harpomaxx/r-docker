last version of rstudio server plus keras. Docker readapted from rocker rstudio/versioned

# Notes

To build the docker for an specific version of Rstudio, you should use `--build-arg RSTUDIOS_VERSION=xxx.xxx.xx` 

## Example

```
docker build --build-arg RSTUDIO_VERSION=2022.02.3-492  --rm -t harpomaxx/nvidia-rstudio-keras nvidia-rstudio-keras
```

# Usage

## Example
```
docker run --gpus all --restart=always -d -p 10001:8787 -e USER=joeuser -e PASSWORD=joepassw -e ROOT=TRUE -e USERID=10002 --name rstudio-r40-cuda10.1-tf22-keras23 -v /home/joeuser/:/home/joeuser/ nvidia-rstudio-keras
```
