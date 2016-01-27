#!/bin/bash
# File name: bundle_install.sh

source ./config.conf

cd $location

echo -e "Gem to install: (press space + enter to update all)"

read install

bundle install $install