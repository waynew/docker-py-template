#!/bin/sh

# This script assumes that the python executable is on your path

python setup.py sdist --formats gztar
docker build --tag="myapp:1" .
