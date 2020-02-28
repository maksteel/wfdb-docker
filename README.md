[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/manishka/wfdb-docker)](https://hub.docker.com/r/manishka/wfdb-docker/builds)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/manishka/wfdb-docker)](https://hub.docker.com/r/manishka/wfdb-docker/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/manishka/wfdb-docker)](https://hub.docker.com/r/manishka/wfdb-docker)

# wfdb-docker

[WaveForm DataBase WFDB](https://archive.physionet.org/physiotools/wfdb-linux-quick-start.shtml) in a Docker container.

## Requirements

* Docker 


## Quickstart

Assuming  that you are able to run `docker`
commands [without `sudo`](http://docs.docker.io/installation/ubuntulinux/#giving-non-root-access),
run below command from the directory (`$PWD`) which stores the datasets or recordings.
In the (dockerized) WFDB, these datasets or recordings can be browsed under `/data` directory.

```
docker run -ti --rm -v $PWD:/data \
                    manishka/wfdb-docker:latest 
```





