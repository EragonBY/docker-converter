#!/bin/bash -e

for file in /src/xls/*.xls; do
    fn=$(basename ${file})
    fn=${fn%.*}
    ssconvert -S $file /src/csv/${fn}.csv
done
