last version of rstudio server plus opencl support. Docker readapted from rocker rstudio/versioned

# Example
```
nvidia-docker run --restart=always -d -p 10001:8787 -e USER=joeuser -e PASSWORD=joepassw -e ROOT=TRUE -e USERID=10002 --name rstudio-r40-cuda10.1-tf22-keras23 -v /home/joeuser/:/home/joeuser/ nvidia-rstudio-keras
```
