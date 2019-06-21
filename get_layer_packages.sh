#!/bin/bash

export PKG_DIR="python/lib/python3.6/site-packages"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}

docker run --rm -v $(pwd):/foo -w /foo lambci/lambda:build-python3.6 \
    pip install -r requirements.txt  -t ${PKG_DIR}

    #pip install -r requirements.txt --no-deps -t ${PKG_DIR}
