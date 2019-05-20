#!/bin/bash
find ./debs -type f -name '*.deb' -delete
rm -r Packages.bz2
find . -name '.DS_Store' -type f -delete
