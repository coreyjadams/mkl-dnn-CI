#!/bin/bash -x
                
module swap PrgEnv-intel $PROGRAMMING_ENV
rm -rf $BUILD_ROOT
mkdir -p $BUILD_ROOT

