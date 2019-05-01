#!/bin/bash -x


cd ${BUILD_ROOT}


export MKLDNN_ARCH_OPT_FLAGS="-march=knl"

mkdir mkl-dnn-build

cd mkl-dnn-build
cmake  -DCMAKE_INSTALL_PREFIX=${BUILD_ROOT}/install \
-DMKLDNN_ARCH_OPT_FLAGS=${MKLDNN_ARCH_OPT_FLAGS} \
../mkl-dnn

make -j install