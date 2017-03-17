#!/bin/bash
# vim: set expandtab tabstop=4 shiftwidth=4:

for file in *.dot
do
    basename=$(basename $file .dot)
    dot -Tpng $file -o ${basename}.png
    dot -Tsvg $file -o ${basename}.svg

    # Also try to compress the PNG filesize a bit
    optipng -zc9 -zm9 -zs0 -f0 ${basename}.png
done
