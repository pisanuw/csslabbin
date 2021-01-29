#!/bin/bash

echo "Switching to g++ from"
clang++ --version

echo "use: g++ --version"
scl enable devtoolset-8 bash

