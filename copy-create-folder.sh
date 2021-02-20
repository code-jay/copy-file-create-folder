#!/bin/bash
#source folder path
srcdir="path/folder1"
#destination folder path
dstdir="path/folder2"

for srcfile in ${srcdir}/*
do
    srcfile2=$(basename $srcfile)
    folder_name=$(cut -d'_' -f1 <<<"$srcfile2")
    dest_folder=$dstdir/$folder_name
    if [ ! -d "$dest_folder" ] 
    then
        mkdir -p "$dest_folder"
    fi
    cp $srcfile $dest_folder    
done
