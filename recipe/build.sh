#!/bin/bash

./configure --prefix="${PREFIX}"
make
if [[ "$CONDA_BUILD_CROSS_COMPILATION" != 1 ]]; then
    make -j 1 check
fi
make install
