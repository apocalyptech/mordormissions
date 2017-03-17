#!/bin/bash
# vim: set expandtab tabstop=4 shiftwidth=4:

for file in *.dot
do
    basename=$(basename $file .dot)
    dot -Tpng $file -o ${basename}.png
    dot -Tsvg $file -o ${basename}.svg
done
