#!/bin/bash -x

# Set up envirnoment:
module swap PrgEnv-intel PrgEnv-gnu

cd $BUILD_ROOT

git clone https://github.com/intel/mkl-dnn.git
cd mkl-dnn
bash ./scripts/prepare_mkl.sh
git checkout $MKL_DNN_RELEASE

git status

cd -

echo "Current files:"
ls
ls mkl-dnn




