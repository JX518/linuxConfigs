#!/bin/bash
docker run -it -p 80:80 -p 5901:5901 --user $(id -u):$(id -g) -v /home/xujus/Documents/ASU/489/fossDesigns:/foss/designs efabless/foss-asic-tools:latest bash
