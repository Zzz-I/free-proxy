#!/bin/bash

source ~/.bashrc

basedir=$(dirname "$0")
project_root=$basedir/..
echo $project_root

cd $project_root

outfile=README.md
lastUpdateDateTime=$(date)
nextUpdateDateTime=$(date -d '+6 hour' '+%F %T')
#nextUpdateDateTime=$(date -d '+1 min' '+%F %T')
echo Last updated at $lastUpdateDateTime, next update schedule at $nextUpdateDateTime  >>  $outfile
echo "" >> $outfile
git add $outfile
git commit -m "update at $lastUpdateDateTime"
git push 

cd -
