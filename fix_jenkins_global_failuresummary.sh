#! /bin/bash

# The generated file contains path that do not take the board directory into
# account.
# Fix this to have a nicer github output for the aggregated file too.

sed -i -e 's/\[\(.*\)\].*/\1/' -e '/^#### [^[]/ {s/#### \(.*\)/#### [\1](\1)/}' $1
