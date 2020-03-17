#!/bin/bash -e
fn=$1
sheet=$2
sheet=$((${sheet}-1))
fn=${fn%.*}
ssconvert -S "/data/in/$1" "/data/tmp/${fn}.csv"
mv "/data/tmp/${fn}.csv.${sheet}" "/data/in/$1"
rm /data/tmp/* -f
