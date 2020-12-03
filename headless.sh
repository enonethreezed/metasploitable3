#! /bin/bash

# https://github.com/clong/DetectionLab/wiki/Quickstart-Linux

base=$PWD

# Make the Vagrant instances headless
sed -i 's/vb.gui = true/vb.gui = false/g' Vagrantfile
cd ..

# Make the Packer images headless
cd packer/templates | exit 1
for file in *.json; do
	sed -i 's/"headless": false,/"headless": true,/g' "$file";
done
