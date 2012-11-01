#!/bin/bash

# Auto Compile LESS
./monitor.py --dir ../less/ --action '
    echo $(date +%H:%M:%S) compiling LESS...;
    lessc ../less/bootstrap.less > ../css/style.css && cleancss -o ../css/style-min.css ../css/style.css;
    echo $(date +%H:%M:%S) done compiling;
    sourceDir=${PWD%/*/*};
    sourceDir=${sourceDir##*/};
    sourceDir="/Volumes/Source Code/"$sourceDir"/site/css";
    if [ -d "$sourceDir" ]; then
        echo $(date +%H:%M:%S) "copying compiled output to dev...";
        cp ../css/style-min.css "$sourceDir";
        echo $(date +%H:%M:%S) done copying;
    fi
    echo $(date +%H:%M:%S) done;
    echo ------------------------------------------------------;
'