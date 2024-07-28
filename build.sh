#!/bin/bash

#ZIPS ARE TO BE COMPRESSED WITH DEFLATE

if [ "$DEBUG" ]; then
    set -x
fi

function compose {
    for DIR in "$1"/*; do
	if [ -d ${DIR} ]; then
	    #check if zipfile of the same address name is present in the folder
	    if [  ]; then
		rm
	    fi
	    zip
	fi
    done
}

function errPrint {
    >&2 echo -e "\e[31mR - Error: $1\e[0m"
}

function checkBin {
    if ! which "$1"; then
	errPrint "$1 was not found in PATH."
	exit 1
    fi
}

checkBin tdmfscripteditor
checkBin tdmextractor



if [ "$DEBUG" ]; then
    set +x
fi
