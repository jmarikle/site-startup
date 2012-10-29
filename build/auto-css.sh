#!/bin/bash

# Auto Compile LESS
./monitor.py --dir ../less/ --action 'echo $(date +%H:%M:%S) compiling LESS...; lessc ../less/bootstrap.less > ../css/style.css && cleancss -o ../css/style-min.css ../css/style.css && cp ../css/style-min.css /Volumes/Source\ Code/sdagc.org/site/css/style-min.css;  echo $(date +%H:%M:%S) done'
