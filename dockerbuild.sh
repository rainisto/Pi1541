#!/bin/bash
docker build -t pi1541 .
docker run -v `pwd`/results:/results -t pi1541 cp /Pi1541/kernel.img /results
