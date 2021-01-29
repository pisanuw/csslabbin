#!/bin/bash

X=`which clang++ 2> /dev/null `

[ -z "$X" ] && echo "switching to clang++: scl enable llvm-toolset-7.0 bash" && scl enable llvm-toolset-7.0 bash 



