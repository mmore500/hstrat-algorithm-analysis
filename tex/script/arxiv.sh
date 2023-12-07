#!/bin/bash

set -e
shopt -s globstar

find {hereditary-stratigraph-concept,hstrat-evolutionary-inference} -type f ! \( -name "*.pdf" -o -name "*.tex" -o -name "*.bib" \) -exec rm -f {} +


find . -type d -name dishtiny -exec rm -rf {} +
find . -type d -name hstrat -exec rm -rf {} +
find . -type d -name conduit -exec rm -rf {} +
find . -type d -empty -delete
find . -type l -delete

find . -type f -regextype posix-extended -not -regex "./[a-zA-Z0-9_+.,=-]+(/.*)?" -delete
