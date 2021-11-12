#!/usr/bin/bash

# Tex-Pretty all tex files in a directory

for DIR in $(find . -type f -name "*.tex")
do
    pty=$(texpty -n -m 1 -d ${DIR})
    echo "$pty" > ${DIR}
done

