#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd)"

docker run --name myapp-dev -v $SCRIPT_DIR/mystuff:/myapp myapp:1 -m myapp.app
