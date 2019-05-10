#!/bin/bash

wget=/usr/bin/wget
tar=/bin/tar
apimation_dir=/var/apimation

TXT="Script Run Finished"
WORKING_DIR="/var/apimation"
URL_BASE="https://github.com/apimation/cli-client/releases/download/v0.52.1/apimation_0.52.1_linux_amd64.zip"


# change to working directory and cleanup any downloaded files and extracted project files in directory
mkdir $WORKING_DIR
rm -f *zip*
cd $WORKING_DIR
rm -f *

# wget to download appimation file
$wget ${URL_BASE}

# cp apimation_0.52.1_linux_amd64.zip $WORKING_DIR/apimation

unzip $WORKING_DIR/apimation_0.52.1_linux_amd64.zip

echo $TXT

rm -f *zip*