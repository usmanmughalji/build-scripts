#!/bin/bash

#Autmate

wget https://raw.githubusercontent.com/usmanmughalji/build-scripts/master/kernel-environment.sh && chmod +x kernel-environment.sh && ./kernel-environment.sh

wget https://raw.githubusercontent.com/usmanmughalji/build-scripts/master/kernel-compile.sh && chmod +x kernel-compile.sh && ./kernel-compile.sh

wget https://raw.githubusercontent.com/usmanmughalji/build-scripts/master/upload.sh && chmod +x upload.sh && ./upload.sh
