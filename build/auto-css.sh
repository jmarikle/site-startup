#!/bin/bash

# Auto Compile LESS
./monitor.py --dir ../less/ --action 'lessc ../less/bootstrap.less > ../css/style.css && cleancss -o ../css/style-min.css ../css/style.css'
